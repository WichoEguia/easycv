// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require chosen-jquery
//= require material
//= require pickadate/picker
//= require pickadate/picker.date
//= require pickadate/picker.time
//= require turbolinks
//= require_tree .

document.addEventListener("turbolinks:load", function() {
  componentHandler.upgradeDom();

  $(".chosen_select").chosen();
  $('.datepicker').pickadate();
  $('.timepicker').pickatime();

  var modal = $(".modal_container");

  $(".assign_appointment").click(function(){
    modal.addClass("active");
  });

  $(".close").click(function(){
    modal.removeClass("active");
  });

  $(".set_appointment").click(function(e){
    var date = $(".modal_date_picker").val();
    var time = $(".modal_time_picker").val();

    if(date == "" || time == ""){
      swal("Revisar datos","Asegurate de llenar ambos campos","warning");
      return false;
    }else{
      return true;
    }
  });

});
