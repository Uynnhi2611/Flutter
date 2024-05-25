class algorithm {
  static List<int> calculateResults(int N) {
    String a = N.toString();
    var D = <int>[];
    var m = 1;
    D.add(N);

    void HamXoa(int soluong, int vt) {
      var b = a.split(''); // Sử dụng một mảng ký tự để thao tác
      b.removeRange(
          vt, vt + soluong); // Xóa các ký tự từ vị trí vt đến vt + soluong - 1
      var x = int.parse(b.join('')); // Chuyển lại thành số nguyên
      D.add(x); // Thêm số mới vào mảng D
      m++;
    }

    var dodai = a.length;
    // Hàm xóa i ký tự bắt đầu từ vị trí j
    for (var i = 1; i < dodai; i++) {
      for (var j = 0; j <= dodai - i; j++) {
        HamXoa(i, j);
      }
    }

    // Sắp xếp lại mảng D
    D.sort(); // Sắp xếp lại mảng D

    // Loại bỏ các phần tử trùng nhau và kiểm tra chia hết cho 3
    var kq = KiemTraHamTrung(D, m);

    return kq; // Trả về danh sách các kết quả
  }

  static List<int> KiemTraHamTrung(var D, var m) {
    var kq = <int>[];

    for (var i = 1; i < m; i++) {
      if (D[i] != D[i - 1]) {
        if (D[i] % 3 == 0) {
          kq.add(D[i]);
        }
      }
    }
    if (D[0] % 3 == 0) {
      kq.add(D[0]);
    }
    return kq;
  }
}
