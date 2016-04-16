var X, Y;
X = argument[0];
Y = argument[1];

with (objFOW)
{
    if (!dead && distance_to_point(X, Y) < 16)
    {
        dead = true;
    }
}
