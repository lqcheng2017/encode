function A = double(T)
%DOUBLE Convert a sptenmat to a sparse matrix.
%
%   A = double(T) converts T stored as a SPTENMAT to a sparse matrix.
%
%   See also SPTENMAT.
%
%MATLAB Tensor Toolbox.
%Copyright 2012, Sandia Corporation.

% This is the MATLAB Tensor Toolbox by T. Kolda, B. Bader, and others.
% http://www.sandia.gov/~tgkolda/TensorToolbox.
% Copyright (2012) Sandia Corporation. Under the terms of Contract
% DE-AC04-94AL85000, there is a non-exclusive license for use of this
% work by or on behalf of the U.S. Government. Export of this data may
% require a license from the United States Government.
% The full license terms can be found in the file LICENSE.txt


m = prod(T.tsize(T.rdims));
n = prod(T.tsize(T.cdims));
if isempty(T.subs)
    A = sparse(m,n);
else
    A = sparse(T.subs(:,1), T.subs(:,2), T.vals, m, n);
end
