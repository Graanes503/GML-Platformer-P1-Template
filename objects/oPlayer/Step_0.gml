/// @description platformer mechnanics

// 
key_right = keyboard_check(vk_right)
key_left =keyboard_check(vk_left)
key_jump = keyboard_check(vk_space)

// work out where to move horizontally
hsp = (key_right - key_left) * hsp_walk;

// work out where to move vertically 
vsp = vsp + grv;

// work out if we can jump
// you can only jump from a platform [no double jump]
//we need to amke sure there is a platform beneath us (a collision below)
// x and y are the x and y position of our object (oPlayer)
//we also need to make sure we're trying to jump (space bar pressed)
if ( place_meeting(x, y + 1, oWall) and key_jump)
{
vsp = vsp_jump;
}

// whart if there is a wall to our left or right
var onepixel =sign(hsp) //  equal to -1 (left), 0, or 1 (right)
// is there a wall 
if ( place_meeting(x + hsp, y, oWall) )
{
	//if were in here, there will a collision in the next step
	//
	//
	while (!place_meeting(x + onepixel, y, oWall) )
	{
		// move 1 pixel left or right 
		x = x + onepixel;
	}
	//stop!!!
	hsp = 0;
}

x = x + hsp

//
//
	//
var onepixel = sign(vsp)
if (place_meeting(x, y + vsp, oWall))
{
	//
	while (!place_meeting(x, y + onepixel, oWall))
	{
	y = y + onepixel
	}
	vsp = 0;
}
 y = y + vsp;
