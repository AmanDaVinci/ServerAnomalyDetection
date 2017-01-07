function [mu sigma2] = estimateGaussian(X)

%ESTIMATEGAUSSIAN This function estimates the parameters of a 
%Gaussian distribution using the data in X
%   [mu sigma2] = estimateGaussian(X), 
%   The input X is the dataset with each n-dimensional data point in one row
%   The output is an n-dimensional vector mu, the mean of the data set
%   and the variances sigma^2, an n x 1 vector
% 

% Useful variables
[m, n] = size(X);

% We should return these values correctly
mu = zeros(n, 1);
sigma2 = zeros(n, 1);

% Computing mean along the feature columns
mu = mean(X)';

% Computing the variance
sigma2 = var(X)';
% Correcting as per specs
sigma2 = ((m-1) / m) .* sigma2;


% =============================================================


end
