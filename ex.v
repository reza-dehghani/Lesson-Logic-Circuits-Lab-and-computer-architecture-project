module ex(l, e, g , a1, a0, b1, b0);
input a0, a1, b0, b1;
output l, g, e;
wire a1not, b0not, b1not;
not (a1not, a1);
not (a0not, a0);
not (b1not, b1);
not (b0not, b0);

wire w0, w1;
xnor (w0 , a1, b1),
	(w1, a0, b0);
and (e, w1, w0);
wire w3, w4, w2;
and (w2, a1not, b1),
	(w3, a0not, b0, b1),
	(w4, a1not, a0not, b0);
or (l, w2, w3, w4);
wire w5, w6, w7;
and (w5, a1, b1not),
	(w6, a0, b0not, b1not),
	(w7, a1, a0, b0not);
or (g, w6, w5, w7);
endmodule
