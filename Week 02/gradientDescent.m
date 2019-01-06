function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    % The hypothesis is a vector, formed by multiplying the X matrix (i.e. matrix of
    % features) and the theta vector (i.e. vector of theta values).  
    
    % X has size (m x n) and theta is (n x 1).  Therefore the product of both is
    % (m x 1).  That is good because it is the same as 'y'.  In code this can be 
    % described as follows:
    
    hypothesis_vector = X*theta;
     
    % The "errors vector" is the difference between the "hypothesis_vector" and 
    % the "y" vector.
    
    errors_vector = (hypothesis_vector - y);
    
    % The change in theta (i.e. gradient) is the sum of the product of X and the 
    % errors vector, scaled by alpha and 1/m (i.e. (alpha/m)).
    
    % Since X is (m x n) and the error vector is (m x 1), and the result you want is 
    % the same size as theta (which is (n x 1)), you need to transpose X before 
    % multiplying the errors vector, i.e: theta = theta - (alpha/m)*(X')*(X*theta - y);    
    
    theta_change = (alpha/m)*(X')*(errors_vector);
    
    % This can be simplified as:

    theta = theta - theta_change;
   
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
