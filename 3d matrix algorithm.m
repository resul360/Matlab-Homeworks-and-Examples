A=[2.04 -1 0 0;-1 2.04 -1 0;0 -1 2.04 -1;0 0 -1 2.04];  B=[40.8;0.8;0.8;200.8];
[m,n]=size(A);
X=zeros(m,1);
A(1,2)=A(1,2)./A(1,1);
B(1)=B(1)./A(1,1);

for i=2:m-1;
    div=A(i,i)-A(i,i-1).*A(i-1,i);
    A(i,i+1)=A(i,i+1)./div;
    B(i)=(B(i)-A(i,i-1).*B(i-1))./div;
end
A
B
i=m;
  X(m)=(B(i)-A(i,i-1).*B(i-1))./(A(i,i)-A(i,i-1).*A(i-1,i));
  for i=m-1:-1:1;
      X(i)=B(i)-A(i,i+1).*X(i+1);
  end
  X
      