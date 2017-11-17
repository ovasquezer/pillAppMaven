var room = 1;
function education_fields() {
 
    room++;
    var objTo = document.getElementById('education_fields');
    var divtest = document.createElement("div");
	divtest.setAttribute("class", "form-group removeclass" + room);
	var rdiv = 'removeclass' + room;
    divtest.innerHTML = '<div class="col-sm-2 multifield-spacing nopadding"><div class="form-group"><input type="text" class="form-control" id="Firstname" name="Firstname[]" value="" placeholder="First Name"></div></div><div class="col-sm-2 multifield-spacing nopadding"><div class="form-group"><input type="text" class="form-control" id="Last Name" name="Lastname[]" value="" placeholder="Last Name"></div></div><div class="col-sm-2 multifield-spacing nopadding"><div class="form-group"><input type="number" class="form-control" id="Phonenumber" name="Phonenumber[]" value="" placeholder="Phone"></div></div><div class="col-sm-2 multifield-spacing nopadding"><div class="form-group"><input type="email" class="form-control" id="Email" name="Email[]" value="" placeholder="Email"></div></div><div class="col-sm-2 multifield-spacing-type nopadding"><div class="form-group"><div class="input-group"><select class="form-control" id="contactType" name="contactType[]"><option value="">Contact Type</option><option value="Medic">Medic</option><option value="Pharmacy">Pharmacy</option><option value="Relative">Relative</option><option value="Other">Other</option></select><div class="input-group-btn"><button class="btn btn-success" type="button"  onclick="education_fields();"> <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> </button></div></div></div></div><div class="clear"></div></div>';
    
    objTo.appendChild(divtest);
}
function remove_education_fields(rid) {
        $('.removeclass'+rid).remove();
}