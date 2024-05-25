class algorithm {
  List<int> countEvenDivisibleByThree(int start, int end) {
    int count = 0;
    int sum = 0;
    for (int i = start; i <= end; i++) {
      if (i % 2 == 0 && i % 3 == 0) {
        count++;
        sum += i;
      }
    }
    return [count, sum];
  }
}
