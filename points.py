points = []
y = 10
print(y)
print(y)

x = 0
x_step = 0.5
x_str = ""
y_str = ""
points_str = "["
while x < 30:
    x_str = "{:4.2f}".format(x)
    y = 0.03 * x * x;
    y_str = "{:4.2f}".format(y)
    print(f"[{x_str}, {y_str}]")
    points_str += f"[{x_str}, {y_str}], "
    x += x_step
    
points_str += "]"
print(points_str)

