int arr_sum (int* arr1, int* arr2, int len) {
    int sum [len];
    for (int i = 0; i < len; i++) {
        sum[i] = arr1[i] + arr2[i];
    }
    return sum[len-1]; 
}