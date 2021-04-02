% 
p=11;
q=3;
A = randn(p+q);
Q = orth(A);
[C,S] = csd(Q(1:p,1:p),Q(1:p,p+1:p+q),Q(p+1:p+q,1:p),Q(p+1:p+q,p+1:p+q));
[C,S,U1,V1] = csd(Q(1:p,1:p),Q(1:p,p+1:p+q),Q(p+1:p+q,1:p),Q(p+1:p+q,p+1:p+q));
[C,S,U1,V1,U2,V2] = csd(Q(1:p,1:p),Q(1:p,p+1:p+q),Q(p+1:p+q,1:p),Q(p+1:p+q,p+1:p+q))

p=30;
q=8;
A = randn(p+q);
Q = orth(A);
[C,S] = csd(Q(1:p,1:p),Q(1:p,p+1:p+q),Q(p+1:p+q,1:p),Q(p+1:p+q,p+1:p+q));
[C,S,U1,V1] = csd(Q(1:p,1:p),Q(1:p,p+1:p+q),Q(p+1:p+q,1:p),Q(p+1:p+q,p+1:p+q));
[C,S,U1,V1,U2,V2] = csd(Q(1:p,1:p),Q(1:p,p+1:p+q),Q(p+1:p+q,1:p),Q(p+1:p+q,p+1:p+q))


p=2;
q=2;
A = randn(p+q);
Q = orth(A);
[C,S] = csd(Q(1:p,1:p),Q(1:p,p+1:p+q),Q(p+1:p+q,1:p),Q(p+1:p+q,p+1:p+q));
[C,S,U1,V1] = csd(Q(1:p,1:p),Q(1:p,p+1:p+q),Q(p+1:p+q,1:p),Q(p+1:p+q,p+1:p+q));
[C,S,U1,V1,U2,V2] = csd(Q(1:p,1:p),Q(1:p,p+1:p+q),Q(p+1:p+q,1:p),Q(p+1:p+q,p+1:p+q));

norm(Q - blkdiag(U1,U2)*[C -S; S C]*blkdiag(V1,V2)')
norm(S.^2 + C.^2)-1

n=2;
A = randn(2*n);
Q = single(orth(A));
[C,S] = csd(Q(1:n,1:n),Q(1:n,n+1:2*n),Q(n+1:2*n,1:n),Q(n+1:2*n,n+1:2*n));
[C,S,U1,V1] = csd(Q(1:n,1:n),Q(1:n,n+1:2*n),Q(n+1:2*n,1:n),Q(n+1:2*n,n+1:2*n));
[C,S,U1,V1,U2,V2] = csd(Q(1:n,1:n),Q(1:n,n+1:2*n),Q(n+1:2*n,1:n),Q(n+1:2*n,n+1:2*n));

norm(Q - blkdiag(U1,U2)*[C -S; S C]*blkdiag(V1,V2)')
norm(S.^2 + C.^2)-1

n=2;
A = complex(randn(2*n),randn(2*n));
Q = orth(A);
[C,S] = csd(Q(1:n,1:n),Q(1:n,n+1:2*n),Q(n+1:2*n,1:n),Q(n+1:2*n,n+1:2*n));
[C,S,U1,V1] = csd(Q(1:n,1:n),Q(1:n,n+1:2*n),Q(n+1:2*n,1:n),Q(n+1:2*n,n+1:2*n));
[C,S,U1,V1,U2,V2] = csd(Q(1:n,1:n),Q(1:n,n+1:2*n),Q(n+1:2*n,1:n),Q(n+1:2*n,n+1:2*n));

norm(Q - blkdiag(U1,U2)*[C -S; S C]*blkdiag(V1,V2)')
norm(S.^2 + C.^2)-1

n=2;
A = single(complex(randn(2*n),randn(2*n)));
Q = single(orth(A));
[C,S] = csd(Q(1:n,1:n),Q(1:n,n+1:2*n),Q(n+1:2*n,1:n),Q(n+1:2*n,n+1:2*n));
[C,S,U1,V1] = csd(Q(1:n,1:n),Q(1:n,n+1:2*n),Q(n+1:2*n,1:n),Q(n+1:2*n,n+1:2*n));
[C,S,U1,V1,U2,V2] = csd(Q(1:n,1:n),Q(1:n,n+1:2*n),Q(n+1:2*n,1:n),Q(n+1:2*n,n+1:2*n));

norm(Q - blkdiag(U1,U2)*[C -S; S C]*blkdiag(V1,V2)')
norm(S.^2 + C.^2)-1

A = randn(10,5);
A = A*A';
[Q,R] = qr(A);
[C,S,U1,V1,U2,V2] = csd(Q(1:5,1:5),Q(1:5,6:10),Q(6:10,1:5),Q(6:10,6:10));
norm(Q - blkdiag(U1,U2)*[C -S; S C]*blkdiag(V1,V2)')
norm(S.^2 + C.^2)-1

A = complex(randn(10,5),randn(10,5));
A = A*A';
[Q,R] = qr(A);
[C,S,U1,V1,U2,V2] = csd(Q(1:5,1:5),Q(1:5,6:10),Q(6:10,1:5),Q(6:10,6:10));
norm(Q - blkdiag(U1,U2)*[C -S; S C]*blkdiag(V1,V2)')
norm(S.^2 + C.^2)-1

A = randn(10,5);
A = A*A';
[Q,R] = qr(single(A));
[C,S,U1,V1,U2,V2] = csd(Q(1:5,1:5),Q(1:5,6:10),Q(6:10,1:5),Q(6:10,6:10));
norm(Q - blkdiag(U1,U2)*[C -S; S C]*blkdiag(V1,V2)')
norm(S.^2 + C.^2)-1

A = complex(randn(10,5),randn(10,5));
A = A*A';
[Q,R] = qr(single(A));
[C,S,U1,V1,U2,V2] = csd(Q(1:5,1:5),Q(1:5,6:10),Q(6:10,1:5),Q(6:10,6:10));
norm(Q - blkdiag(U1,U2)*[C -S; S C]*blkdiag(V1,V2)')
norm(S.^2 + C.^2)-1