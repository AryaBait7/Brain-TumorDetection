
% Read the image
img = imread('brain.png'); % Replace with your image file path

% Check if the image is already grayscale
if size(img, 3) == 3
    % Convert to grayscale if it is a color image
    gray_img = rgb2gray(img);
else
    % If the image is already grayscale, use it as is
    gray_img = img;
end

% Display original image
figure, imshow(gray_img), title('Original Image');

% Set parameters for active contour model
iterations = 50;  % Number of iterations

% Initialize the mask (starting contour)
[rows, cols] = size(gray_img);
mask = zeros(rows, cols);

% Define a circular mask around the center of the image to start the contour evolution
centerX = round(cols / 2);
centerY = round(rows / 2);
radius = 60; % Radius of initial contour

% Create the initial mask (circular region)
for i = 1:rows
    for j = 1:cols
        if (i - centerY)^2 + (j - centerX)^2 <= radius^2
            mask(i,j) = 1;
        end
    end
end

% Display the initial mask
figure, imshow(mask), title('Initial Mask');

% Perform Active Contour Segmentation using the 'activecontour' function in MATLAB
segmented_img = activecontour(gray_img, mask, iterations, 'Chan-Vese');

% Display the result
figure, imshow(segmented_img), title('Segmented Image using Active Contour');
