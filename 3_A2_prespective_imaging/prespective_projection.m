% Project a point from 3D to 2D using a matrix operation

%% Given: Point p in 3-space [x y z], and focal length f
%% Return: Location of projected point on 2D image plane [u v]
function p_img = project_point(p, f)
    %% TODO: Define and apply projection matrix
endfunction

%% Test: Given point and focal length (units: mm)
p = [200 100 120];
f = 50;

disp(project_point(p, f));

