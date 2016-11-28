
  $(function(){
    $('span.edit-quantity').click(function(){
      $(this).next().css('display', 'inline-block');
      var edit = $(this).parent().parent().find('input');
      edit.attr('readonly', false);
      edit.css('border', '1px solid #FF0000')
    });
  });

  $(function(){
    $('td').on('click', '.save_quantity', function(e){
      e.preventDefault();
      $(this).css('display','none');
      var id = $(this).attr('id');
      var save = $(this).parent().parent().find('input');
      save.css("readonly",true)
      var quantity = $('.quantity_edit_'+id+'').val();
      var info = { id: id, quantity: quantity}
        $.ajax ({
          method: 'PUT',
          url: '/carts',
          data: info,
        });
    });
  });
