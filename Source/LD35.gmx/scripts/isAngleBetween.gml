var n, a, b;
n = argument[0];
a = argument[1];
b = argument[2];

n = (360 + (n % 360)) % 360;
	a = (3600000 + a) % 360;
	b = (3600000 + b) % 360;

if (a < b)
		  return a <= n && n <= b;

return a <= n || n <= b;
