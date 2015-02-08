function [image] = Rotate(image)
[x,y] = size(image);


for j = 1:1:y
    upper = 0;
    lower = 0;
    i = 1;
    while( upper==0 && i<=x )
        if(image(i,j)==0)
            upper = i;
            break;
        end
        i = i + 1;
    end
    i=x;
    while( lower==0 && i>=1 )
        if(image(i,j)==0)
            lower = i;
            break;
        end
        i = i - 1;
    end
    if (upper==0 && lower==0)
        result = x/2;
    else
        result = (upper+lower)/2;
    end
        middlepoint(j) = result;
end

%for i=1:1:y %outputs the middle point
 %   middlepoint(i)
%end

C(1:y)=(1:y);

p = polyfit( C, middlepoint,1);
f = polyval(p,C);
hold on
%plot(C, f,'--r'); plots the line
%plot(C, middlepoint,'--r'); plots the middle point
angle = atan((f(y)-f(1))./(y-1));
angle2 = radtodeg(angle);
image = imrotate(image,angle2 );
end