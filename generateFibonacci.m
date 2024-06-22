function fibonacciSeq = generateFibonacci(n)
    fibonacciSeq = zeros(1, n);
    fibonacciSeq(1) = 1;
    fibonacciSeq(2) = 1;

    for i = 3:n
        fibonacciSeq(i) = fibonacciSeq(i-1) + fibonacciSeq(i-2);
    end
end