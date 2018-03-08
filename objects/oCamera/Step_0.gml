x += (xTo - x) / 10;
y += (yTo - y) / 10;
cWidth += (wTo - cWidth) / 15;
cHeight += (hTo - cHeight) / 15;

camera_set_view_pos(camera, -(camera_get_view_width(camera) / 2) + x, -(camera_get_view_height(camera) / 2) + y);
camera_set_view_size(camera, cWidth, cHeight);

if(follow != noone)
{
	xTo = follow.x;
	yTo = follow.y;
	wTo = 384;
	hTo = 216;
}
else
{
	xTo = cx;
	yTo = cy;
	wTo = cw;
	hTo = ch;
}