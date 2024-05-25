class Algorithm {
  static int calculateTotalCost(List<int> readings, List<int> prices, List<int> limits) {
    int total = 0;
    for (int i = 0; i < readings.length ~/ 2; i++) {
      total += _calculateCost(readings[i * 2], readings[i * 2 + 1], prices[i * 3], prices[i * 3 + 1], prices[i * 3 + 2], limits[i * 2], limits[i * 2 + 1]);
    }
    return total;
  }

  static int _calculateCost(int start, int end, int a, int b, int c, int limit1, int limit2) {
    int usage = end - start;
    if (usage <= 0) return 0;
    if (usage <= limit1) return usage * a;
    if (usage <= limit2) return limit1 * a + (usage - limit1) * b;
    return limit1 * a + (limit2 - limit1) * b + (usage - limit2) * c;
  }
}
