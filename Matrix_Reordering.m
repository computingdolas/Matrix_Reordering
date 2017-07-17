
% This is program for exploring and comparing matrix reordering techniques
% 1. 

% Load Matrix 
% load AwithoutSFC.txt 
% Matrix_normal = spconvert(AwithoutSFC)
% figure 
%spy(Matrix_normal)
%title('A Sparse Symmetric Finite Element Matrix for Helmholtz Equation')
%nz = nnz(Matrix_normal)

% % Time to perform LU factorization 
% tic 
% L = lu(Matrix_normal);
% t(1) = toc 
% spy(L), title('LU Factorization Time')
% nc(1) = nnz(L)
% xlabel(sprintf('nonzeros = %d (%.2f%%)   time = %.2f sec',nc(1),t(1)));

% Reverse Cuthill-Mckee 
%RCM = symrcm(Matrix_normal)
% spy(Matrix_normal(RCM,RCM))
% title('Matrix after Reverse Cuthill Mckee Ordering')
%nz = nnz(RCM)

%Time to perform LU factorization of RCM ordering 

% tic 
% L = lu(Matrix_normal(RCM,RCM))
% t(1) = toc 
% spy(L), title('LU Factorization of RCM ordering')
% nc(1) = nnz(L)
% xlabel(sprintf('nonzeros = %d time = %.2f sec',nc(1),t(1)));

%Time to perform LU factorization of SFC ordering 
load Aw.txt
Matrix_SFC = spconvert(Aw)
figure
spy(Matrix_SFC), title('Space Filling Curve Ordering')
tic 
L = lu(Matrix_SFC)
t(1) = toc 
spy(L), title('LU Factorization of SFC ordering')
nc(1) = nnz(L)
xlabel(sprintf('nonzeros = %d time = %.2f sec',nc(1),t(1)));

% Time to perform LU factorization of minimum degree 
%A = symamd(Matrix_normal) 
%spy(Matrix_normal(A,A)), title('Matrix After Minimum Ordering Scheme')
% tic
% L = lu(Matrix_normal(A,A))
% t(1) = toc 
% nc(1) = nnz(L)
% spy(L), title('LU Factorization')


%Time to perform LU factorization of column count ordering 
%C = colperm(Matrix_normal)
%spy(Matrix_normal(C,C))
%title('Matrix After Column permutation')

%tic
%L = lu(Matrix_normal(C,C))
%t(1) = toc 
%nc(1) = nnz(L)
%spy(L), title('LU Factorization of Column Ordering')






