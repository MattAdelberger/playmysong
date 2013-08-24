$(document).ready(function(){
	var body = $('body'),
    main = $('.main'),
    open_modal = $('.open-modal'),
    close_modal = $('.close-modal'),
    modal_container = $('.modal-container'),
    toggleModal = function() {
        body.toggleClass('body-locked');
        modal_container.toggleClass('dp-block');
    };

open_modal.on('click', toggleModal);
close_modal.on('click', toggleModal);
});