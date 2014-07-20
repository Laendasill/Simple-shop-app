jQuery ->

 $("#products").dataTable()

 $('#products tbody').on( 'click', 'tr',` function() {

   if ( $(this).hasClass('selected'))
    $(this).removeClass('selected');
  else {
    table.$('tr.selected').removeClass('selected')
    $(this).addClass('selected')
  }}`)

 $('#CatSet li a').click ->
   tmp = $(this).attr("value") 
   $('#set_category').attr("value",tmp)
   $('#dropdownMenu1').text($(@).text())
# $.ajax({
#   type: "GET",
#    url: edit_product,
#    data: { product: { category_id: 1}},
#    success:(data) ->
#      alert data.id
#      return false
#   error:(data) ->
#      return false })
