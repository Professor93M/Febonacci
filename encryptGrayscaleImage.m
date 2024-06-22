function encryptedImage = encryptGrayscaleImage(inputImage)
    disp('Processing grayscale image...');
    [rows, cols] = size(inputImage);
    fibonacciSeq = generateFibonacci(rows * cols);
    imageArray = reshape(inputImage, 1, []);
    fibonacciSeq = cast(fibonacciSeq, class(imageArray));
    encryptedArray = bitxor(imageArray, fibonacciSeq);
    encryptedImage = reshape(encryptedArray, size(inputImage));
    figure;
    subplot(1, 2, 1); imshow(inputImage); title('Original Grayscale Image');
    subplot(1, 2, 2); imshow(encryptedImage); title('Encrypted Grayscale Image');
end