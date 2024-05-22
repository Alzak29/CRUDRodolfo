function advertencia (e){
    e.preventDefault();
    
    Swal.fire({
        title: '¿Estás seguro?',
        text: '¡El registro se modificara!',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#2CB073',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Si, modificar calificaciones',
        cancelButtonText: 'No, no modificar calificaciones',
        reverseButtons: true,
        padding: '20px',
        backdrop: true,
        position: 'top',
        allowOutsideClick: true,
        allowEscapeKey: true,
        allowEnterKey: false,
    }).then((result)=>{
        if(result.isConfirmed){
            e.target.closest('form').submit();
        }
    })


}