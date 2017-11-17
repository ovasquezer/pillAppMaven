var room = 1;
function education_fields() {
 
    room++;
    var objTo = document.getElementById('education_fields');
    var divtest = document.createElement("div");
	divtest.setAttribute("class", "form-group removeclass" + room);
	var rdiv = 'removeclass' + room;
    divtest.innerHTML = '<div class="col-sm-2 multifield-spacing nopadding"><div class="form-group"><input type="number" class="form-control" id="Quantity" name="Quantity[]" value="" placeholder="Quantity"></div></div><div class="col-sm-2 multifield-spacing nopadding"><div class="form-group"><input type="text" class="form-control" id="Medname" name="Medname[]" value="" placeholder="Name"></div></div><div class="col-sm-2 multifield-spacing-type nopadding"><div class="form-group"><input type="datetime-local" class="form-control" id="Medtime" name="Medtime[]" value="" placeholder="Medication Time"></div></div><div class="col-sm-2 multifield-spacing nopadding"><div class="form-group"><input type="number" class="form-control" id="Medduration" name="Medduration[]" value="" placeholder="Duration"></div></div><div class="col-sm-2 nopadding"><div class="form-group"><div class="input-group-btn"><button class="btn btn-danger" type="button"  onclick="remove_education_fields('+ room +');"> <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> </button></div></div></div><div class="clear"></div>';
    
    objTo.appendChild(divtest);
}
function remove_education_fields(rid) {
        $('.removeclass'+rid).remove();
}