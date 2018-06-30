% Find template 1D test code

s = [-1 0 0 1 1 1 0 -1 -1 0 1 0 0 -1];
t = [-1 0 1];

disp('Signal :'), disp([1:size(s,2);s]);
disp('Template :'), disp([1:size(t,2);t]);

index = find_template_1D(t, s);
disp('Index :'), disp(index);