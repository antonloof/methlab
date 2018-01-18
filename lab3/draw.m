function draw(verts, inds, col)
    for i=1:size(inds,1)
        Si=inds(i,:); 
        fill3(verts(1,Si),verts(2,Si),verts(3,Si),col,'facealpha',0.7);
    end
end

