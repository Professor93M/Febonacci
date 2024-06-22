function encryptedImage = encryptImage(inputImage)
    if nargin < 1
        error('Input image is required.');
    end
    if ndims(inputImage) == 3
        disp('Input image is RGB.');
        encryptedImage = encryptColorImage(inputImage);
    else
        disp('Input image is grayscale.');
        encryptedImage = encryptGrayscaleImage(inputImage);
    end
end