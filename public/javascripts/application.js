// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function validate_values(element){
  if(element == "cloth_tables"){
    console.log($("#alkiler_"+element).val());
    console.log($("#max_"+element).val());
    console.log($("#alkiler_"+element).val() > $("#max_"+element).val())
  }

  if ($("#alkiler_"+element).val() > $("#max_"+element).val()){
    return false
  }else{
    return true
  }
}

function submit_alkiler_form(){
  var sw = true
  $(".item").each(function(a,b){
    var element = b.id.split("alkiler_")[1];
    var ok = validate_values(element);
    //console.log(ok);
    if(!ok){
      sw = false
    }
  })

  if(sw){
    show_modal_dashboard_message("todo Bien", "success");
    $("#add_alkiler").submit();
  }else{
    show_modal_dashboard_message("Errores en los datos", "error");
  }

}

function show_modal_dashboard_message(message, class_name)
{
    $('#'+class_name).remove();

    $('#banner').append("<div style='display:none' id='"+class_name+"'>"+message+"</div>");

    if($('#error_dashboard').length == 0)
        $('#'+class_name).fadeIn(1000).delay(8000).fadeOut(400);
    else
        $('#'+class_name).fadeIn(1000)

}

function calculate_total_value(){
  var total_value = 0;
  $(".item").each(function(a,b){
    if(b.value != ""){
      var price = $("#alkiler_"+b.id.split("alkiler_")[1]).attr("price");
      var units = b.value;
      total_value += (parseInt(price) * parseInt(units));
      console.log("precio: "+price);
      console.log("unidades"+units);
      console.log(total_value);
    }
  });
  $("#alkiler_total").val(total_value);
}