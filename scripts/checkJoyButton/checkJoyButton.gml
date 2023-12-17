/// @description checkJoyButton()
function checkJoyButton() {

	var __allowedbuttons = 0;
	__allowedbuttons[0] = gp_face1;
	__allowedbuttons[1] = gp_face2;
	__allowedbuttons[2] = gp_face3;
	__allowedbuttons[3] = gp_face4;
	__allowedbuttons[4] = gp_start;
	__allowedbuttons[5] = gp_select;
	__allowedbuttons[6] = gp_stickl;
	__allowedbuttons[7] = gp_stickr;
	__allowedbuttons[8] = gp_shoulderl;
	__allowedbuttons[9] = gp_shoulderr;
	//analogue triggers are handled separately.

	for (var i = 0; i < array_length_1d(__allowedbuttons); i++)
	{
	    var _btn = __allowedbuttons[i];
	    if (gamepad_button_check(global.joyid, _btn))
	        return _btn;
	}

	if (gamepad_button_value(global.joyid, gp_shoulderlb) > 0.6)
	    return gp_shoulderlb;
    
	if (gamepad_button_value(global.joyid, gp_shoulderrb) > 0.6)
	    return gp_shoulderlb;
    
	__allowedbuttons = 0; // free the array.
	return 0;



}
