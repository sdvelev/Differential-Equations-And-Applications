function SlopePlot

    x=linspace(-5, 5, 25);
    y=linspace(-5,5, 25);

    axis([-6.5,6.5,-6.5,6.5]);
    hold on;
    delta = 0.2;

    for i=1:length(x)
        for j=1:length(y)   
            epsCurrentPoint = delta/sqrt(1+ff(x(i),y(j))^2);
            plot([x(i)-epsCurrentPoint,x(i)+epsCurrentPoint],...
                    [y(j)-epsCurrentPoint*ff(x(i),y(j)),... 
                    y(j)+epsCurrentPoint*ff(x(i),y(j))],...
                    'LineWidth',0.1,'color','b');
            plot(x(i), y(j), 'k.');
        end
    end
    
    function z = ff(x,y)
        z=(y^2-3)*x*exp(-2*x);  
    end
    
    daspect([1,1,1]);
    hold on;
    [x0, y0] = ginput(1);
    plot(x0, y0, 'y*');
    x=linspace(-10,10,30);
    y=dsolve('Dy=(y^2-3)*x*exp(-2*x)','y(x0)=y0', 'x')
    plot(x,eval(y));
    
end
