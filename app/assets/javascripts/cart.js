$(function(){
  $('a[type="submit"]').click(function(){
    var id = $(this).attr('id');
    var quantity = $('.quantity_'+id+'').val();
    if(quantity ==0) {
      alert('Please Enter Quantity want to buy ');
    }else {
      confirm('Are you want to buy ?');
      var data = { id: id, quantity: quantity}
      $.ajax ({
        method: 'PUT',
        url: '/carts/add',
        data: data,
        dataType: 'script',
        success: function(data) {
        }
      });
    }
  });
});
$(function(){
  $('.cart').hover(function(){
      $(this).addClass('hover-add-cart');
  });
});