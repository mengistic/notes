
import graph;
import geometry;
import settings;


outformat = "pdf";
unitsize(1.3cm);
defaultpen(fontsize(10pt));
size(10cm, 5cm, keepAspect=true);

pair cycloid(real t){
	return (t-sin(t), 1-cos(t));
}


real t0=2.4;
pair A = (t0, 0);
pair C = (t0,1);
pair D = cycloid(t0);

draw(A--C--D);
draw(circle( C,1 ));
markangle( D, C, A, radius=0.2cm, L=Label("$t$") );
markangle( (D.x,0),D,C, radius=0.2cm, n=2, space=0.05cm, L=Label("$\beta$", Fill(white)) );
draw( (D.x,0)--D--(0,D.y), p=Dotted);
distance(Label("$t$"), (0,0), A, 0.8cm);



draw(graph(cycloid, 0, 2*pi+2));
draw( (-0.5,0)--(2*pi+2,0) );
draw( (0,-0.25)--(0,2.25) );

dot("$D$", D, N+W);
dot("$A$", (0,D.y), 1.2W);
dot("$B$", (D.x,0), 1.2S);
dot(C);
