clc;
image = imread('C:\Users\Rishabh\Desktop\Signature Verification\example.png');
image = im2bw(image, 0.5);
[x,y] = size(image);
upper_x = 0;
upper_y = 0;
i = 1;
j = 1;
while(upper_x==0 && i<= x)
    j = 1;
    while(upper_y==0 && j <= y)
        if image(i,j)==0
        upper_x = i;
        upper_y = j;
        
        end
    j = j+1;
    end
    i = i+1;
end

upper_x

lower_x = 0;
lower_y = 0;
i = x;
j = 1;
while(lower_x==0 && i>= 1)
    j = 1;
    while(lower_y==0 && j <= y)
        if image(i,j)==0
        lower_x = i;
        lower_y = j;
        
        end
    j = j+1;
    end
    i = i-1;
end

lower_x

right_x = 0;
right_y = 0;
i = 1;
j = y;
while(right_y==0 && j >= 1)
    i = 1;
    while(right_x==0 && i<= x)
        if image(i,j)==0
        right_x = i;
        right_y = j;
        
        end
    i = i + 1;
    end
    j = j - 1;
end

right_y

left_x = 0;
left_y = 0;
i = 1;
j = 1;
while(left_y==0 && j <= y)
    i = 1;
    while(left_x==0 && i<= x)
        if image(i,j)==0
        left_x = i;
        left_y = j;
        
        end
    i = i + 1;
    end
    j = j + 1;
end

left_y
