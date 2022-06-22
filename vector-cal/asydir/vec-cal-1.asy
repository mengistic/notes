if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="vec-cal-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import geometry;
unitsize(1.5cm);
defaultpen(fontsize(10pt));


real theta=35;
real r0=5;
real rw=0.6*r0;

pair b0 = r0*dir(theta);
pair w = rw*dir(theta);

real rwq=0.55*(r0-rw);
pair q=w+rwq*dir(140);
pair q_=w+rwq*dir(theta);


distance(L=Label("$|b_ju^j|$", align=S+E), w, b0, 18mm, gray, joinpen=dotted);
distance(L=Label("$|\mathcal O(n)|$", align=N+E), w,q, 2cm, gray, joinpen=dotted);

draw(arc(w,rwq, 25, 230), dotted+gray);
draw((0,0)--(b0));
draw(arc((0,0), 0.5, 0, theta), L=Label("$\theta$"));
draw(q--w--q_, StickIntervalMarker(2,2,p=gray, size=0.2cm, space=0.05cm));
draw((0,0)--q--q_, dashed);


draw( (-0.5, 0)--(5,0));
draw( (0,-0.1)--(0,3.5));

dot("$b_0$", b0, N+E);
dot("$b_0+b_ju^j$", w, E+S);
dot("$q(u)$", q, N+W);
dot("$Q$", q_, 1.2E+S);
dot("$O$", (0,0), W+2S);
