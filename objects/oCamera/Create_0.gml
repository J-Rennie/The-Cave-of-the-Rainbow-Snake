cWidth = 384;
cHeight = 216;

camera = camera_create_view(0, 0, cWidth, cHeight, 0, -1, -1, -1, 32, 32);
view_set_camera(0, camera);

follow = oPlayer;
xTo = x;
yTo = y;
wTo = 384;
hTo = 216;