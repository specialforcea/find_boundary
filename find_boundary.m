a = [1 2 3 4 2 6 7 8];
X = [(a(1) + a(2))/2 (a(2) + a(4))/2 (a(4) + a(6))/2 (a(6) + 1)/2];
Y = [(a(3) + a(7))/2 (a(7) + 1)/2];
Z = [(a(5) + a(8))/2 (a(8) + 1)/2];

boundsize = size(X,2)*size(Y,2)*size(Z,2);
region = zeros(1,boundsize);
bound = [];
for i = 1:size(X);
    for j = 1:size(Y)
        for k = 1:size(Z)
            if (f1(X(i),Y(j),Z(k),a)*f2(X(i),Y(j),Z(k),a)*f3(X(i),Y(j),Z(k),a)*f4(X(i),Y(j),Z(k),a) == 1)
                bound = [bound;i j k];
            end
        end
    end
end

