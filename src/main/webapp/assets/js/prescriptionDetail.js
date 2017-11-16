var room = 1;
function education_fields() {
 
    room++;
    var objTo = document.getElementById('fields');
    var divtest = document.createElement("div");
	divtest.setAttribute("class", "form-group removeclass"+room);
	var rdiv = 'removeclass'+room;
    divtest.innerHTML = '<div class="col-sm-3 nopadding"><div class="form-group"><input class="form-control" id="Quantity" name="Quantity[]" placeholder="Quantity" type="text" value=""></div></div><div class="col-sm-3 nopadding"><div class="form-group"><input class="form-control" id="Name" name="Name[]" placeholder="Name" type="text" value=""></div></div><div class="col-sm-3 nopadding"><div class="form-group"><input class="form-control" id="Time" name="Time[]" placeholder="Time" type="datetime-local" value=""></div></div><div class="col-sm-3 nopadding"><div class="form-group"><input class="number" id="Duration" name="Duration[]" placeholder="Duration" type="datetime-local" value=""><div class="input-group"><div class="input-group-btn"><button class="btn btn-danger" onclick="remove_education_fields('+ room +');" type="button"><span aria-hidden="true" class="glyphicon glyphicon-minus"></span></button></div></div></div></div><div class="clear"></div>';
    
    objTo.appendChild(divtest);
}
function remove_education_fields(rid) {
        $('.removeclass'+rid).remove();
}