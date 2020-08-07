function  [ILagrange] = ILagrange(x,y,u)
  n = length(x);
  m = length(u);
  v = zeros(m,1);
  for k=1:m
    s = 0;
    for i = 1:n
      p = y(i);
      for j =1 :n
        if j != i
          p = p*(u(k)-x(j))/(x(i)-x(j));
        endif
      endfor
    s = s+p;
  endfor
  v(k) = s
 endfor
endfunction
x = [25,36,49,64,81,100]
y = [5,6,7,8,9,10]    
u = [53]
ILagrange(x,y,u)