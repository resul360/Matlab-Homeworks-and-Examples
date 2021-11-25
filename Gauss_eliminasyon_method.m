    A=[1 2 -1;5 2 2;-3 5 -1];B=[2;9;1];
[m,n]=size(A);  % A matrisinin Boyutlarý belirlemek
z=0; % A matrisinin En büyük elemanýn belirlemek için baþlangýç deðer
for k=1:m;
    for L=1:n;
        if A(k,L)>=z
            z=A(k,L);
        end
    end
end
for j=1:m;
    for p=2:m;
        if A(j,j)==0; 
            F=A(j,:); 
            A(j,:)=A(p,:);
            A(p,:)=F;
        end
    end
    for i=j+1:m; 
    h=[A(i,j)/A(j,j)];
    A(i,:)=A(i,:)-[h*A(j,:)]; 
    B(i)=B(i)-[h*B(j)];
    end
end
z % A matrisindeki en büyük elemanýn deðeri
k; % k satýr sayýsý,   L sütun sayýsý 
A

X=A\B;  % A matrisinin B ile Transpozesinin Çarpýmý ile de bulunabilir.
X
 
