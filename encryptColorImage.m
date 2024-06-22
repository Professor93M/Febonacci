function encryptedImage = encryptColorImage(inputImage)
    disp('Processing color image...');
    [rows, cols, channels] = size(inputImage);
    fibonacciSeq = generateFibonacci(rows * cols * channels);
    imageArray = reshape(inputImage, 1, []);
    fibonacciSeq = cast(fibonacciSeq, class(imageArray));
    encryptedArray = bitxor(imageArray, fibonacciSeq);
    encryptedImage = reshape(encryptedArray, size(inputImage));
    figure;
    subplot(1, 2, 1); imshow(inputImage); title('Original Color Image');
    subplot(1, 2, 2); imshow(encryptedImage); title('Encrypted Color Image');
end