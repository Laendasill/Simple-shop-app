jQuery ->

  $("#products").dataTable.makeEditable
    sDeleteURL: 

 $('#products tbody').on( 'click', 'tr',` function() {

   if ( $(this).hasClass('selected'))
    $(this).removeClass('selected');
  else {
    table.$('tr.selected').removeClass('selected')
    $(this).addClass('selected')
  }}`)
