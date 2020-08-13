/// @description Initialise Player Object
image_index = 0;
image_speed = 0;

// Set Instance Variables
pad_num = 0;			// This will hold the gamepad slot value
dir = 0;				// The "facing" direction
can_shoot = true;		// Shoot timer to prevent shots every step

buttonA = gp_face1;
buttonB = gp_face2;
buttonX = gp_face3;
buttonY = gp_face4;
lbumper = gp_shoulderl;
ltrigger = gp_shoulderlb;
rbumper = gp_shoulderr;
rtrigger = gp_shoulderrb;
buttonSelect = gp_select;
buttonStart = gp_start;
clickLeft = gp_stickl;
clickRight = gp_stickr;
padu = gp_padu;
padd = gp_padd;
padl = gp_padl;
padr = gp_padr;
axislh = gp_axislh;
axislv = gp_axislv;
axisrh = gp_axisrh;
axisrv = gp_axisrv;

// axis value of gp_face3 is the opposite value of axisrv

// controller debugging (place in a draw event) -------------
