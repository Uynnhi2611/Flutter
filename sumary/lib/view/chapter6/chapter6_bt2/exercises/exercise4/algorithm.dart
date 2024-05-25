class algorithm {
  int calculateMinDifference(List<int> distances) {
    // Sắp xếp danh sách theo thứ tự tăng dần
    distances.sort();

    // Tính độ lệch giữa hai số đầu tiên trong danh sách đã sắp xếp và gán cho biến minDifference
    int minDifference = distances[1] - distances[0];

    // Duyệt qua từng cặp số liền kề trong danh sách từ vị trí thứ 2 trở đi
    for (int i = 2; i < distances.length; i++) {
      // Tính độ lệch giữa số hiện tại và số trước đó
      int currentDifference = distances[i] - distances[i - 1];

      // Nếu độ lệch hiện tại nhỏ hơn độ lệch nhỏ nhất đã tìm được, cập nhật độ lệch nhỏ nhất
      if (currentDifference < minDifference) {
        minDifference = currentDifference;
      }
    }

    // Trả về độ lệch nhỏ nhất
    return minDifference;
  }
}
