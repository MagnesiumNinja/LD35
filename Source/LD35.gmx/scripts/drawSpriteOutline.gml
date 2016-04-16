/* 
    drawSpriteOutline(sprite, image, x, y, color, width);

    sprite - the sprite to draw
    image - the image index
    x - the x position
    y - the y position
    color - the outline color
    width - the width of the outline
*/

var spr, img, X, Y, scale, col, width;
spr = argument[0];
img = argument[1];
X = argument[2];
Y = argument[3];
col = argument[4];
width = argument[5];

draw_sprite_ext(spr, img, X - width, Y - width, image_xscale, image_yscale, image_angle, c_black, 1);
draw_sprite_ext(spr, img, X + width, Y - width, image_xscale, image_yscale, image_angle, c_black, 1);
draw_sprite_ext(spr, img, X - width, Y + width, image_xscale, image_yscale, image_angle, c_black, 1);
draw_sprite_ext(spr, img, X + width, Y + width, image_xscale, image_yscale, image_angle, c_black, 1);
