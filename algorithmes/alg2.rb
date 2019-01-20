find_max(const *array, size_t len) {
    max = INT_MIN
    for (size_t i = 0; i < len, i++) {
        if max < array[i] 
            max = array[i]
    }
    return max;
}