function MakeVideo(x, name)
    v = VideoWriter(join([name,".avi"],""));
    v.FrameRate=60;

    open(v);
    d = size(x);

    for k = 1:d(1)
        plot3(x(1:k,1),x(1:k,2),x(1:k,3));
        grid on
        xlim([min(x(:,1)),max(x(:,1))]);
        ylim([min(x(:,2)),max(x(:,2))]);
        zlim([min(x(:,3)),max(x(:,3))]);
        F = getframe(gcf);
        writeVideo(v,F);
    end
    close(v)
end