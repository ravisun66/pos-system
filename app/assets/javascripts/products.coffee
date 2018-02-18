@calculateTotalPrice = ->
  total_price = 0
  total_price_with_tax = 0
  $('.item_amount').each ->
    total_price += Number($(this).val())
    return
  total_price_with_tax = total_price + total_price * 15 / 100
  $('#label_amount').text total_price
  $('#label_amount_with_tax').text total_price_with_tax
  $('#bill_total_amount').val total_price_with_tax
  return

@setPrice = (index) ->
  $('#bill_bill_items_attributes_' + index + '_amount').val $('#bill_bill_items_attributes_' + index + '_quantity').val() * $('#product_' + index + '_price').val()
  calculateTotalPrice()
  return
