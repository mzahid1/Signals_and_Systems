%Lab 6
%TC-52
%To verify the properties of LTI Systems

%Proof of LTI system properties

%Linerity

t=-1.2:0.0001:1.2;
x=zeros(size(t));
h=zeros(size(t));
x(t>=-1 &t<=1) = 1;
subplot(6,1,1);
plot(t,x); ylabel('x(t)');
h(t>=-1 & t<=1) = 1;
subplot(6,1,2);
plot(t,h);
ylabel('h(t)');
y=conv(x,h);
tt=t(1)+t(1):0.0001:t(end)+t(end);
subplot(6,1,3);
plot(tt,y*0.0001);
ylabel('y(t)');

% Addition Property

x2=x+x;       %defining a variable twice of x
ya=conv(x2,h);  %setting variable ya equals to convolution of two funcs.
tt=t(1)+t(1):0.0001:t(end)+t(end); %defining time
subplot(6,1,4); %creates a subplot row-viz
plot(tt,ya*0.0001); %plotting functions
yb=y+y;       %defining a variable twice of y
hold on     %holds the sub plots
plot(tt,yb*0.0001,'r+');  %plotting functions
ylabel('Addition Property');    %labeling the y-axis

%scaling Property

xs=2*x;     %defining a variable twice of xs
ya=conv(xs,h);  %setting variable ya equals to convolution of two funcs.
tt=t(1)+t(1):0.0001:t(end)+t(end);%defining time
subplot(6,1,5);     %creates a subplot row-viz
plot(tt,ya*0.0001);      %plotting functions
yb=2*y;     %defining a variable twice of y
hold on     %holds the sub plots
plot(tt,ya*0.0001,'r+');    %plotting functions
ylabel('Scaling property');    %labeling the y-axis

t=-1.2:0.0001:1.2;     %defining time 
x1=zeros(size(t)); %setting variable ya equals to function zeros
x1(t>=-0.8 & t<=1.2) = 1;   %logically setting the behaviour of x1 till 1
y1=conv(x1,h);      %setting variable y1 equals to convolution of two funcs.
tt=t(1)+t(1):0.0001:t(end)+t(end);      %defining time
subplot(6,1,6);  %creates a subplot row-viz
plot((1:length(y1))*0.0001,y1*0.0001);      %plotting functions
hold on;        %holds the sub plots
pad=zeros(1,0.2/0.0001); %applying padding to function 
y2=[pad y];     %setting variable y2 equal to the padding array element
plot((1:length(y2))*0.0001,y2*0.0001,'r+');     %plotting functions
ylabel('Time-invariance property');     %labeling the y-axis