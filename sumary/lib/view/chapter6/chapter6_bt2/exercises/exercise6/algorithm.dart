class algorithm {
  List<int> findBeautifulNumbers(int A, int B) {
    List<int> beautifulNumbers = []; // Khởi tạo danh sách để lưu các biển số xe đẹp

    for (int i = A; i <= B; i++) { // Duyệt qua từng số trong khoảng từ A đến B
      if (isPrime(i) && isPalindrome(i)) { // Nếu số đó là số nguyên tố và số đối xứng
        beautifulNumbers.add(i); // Thêm số đó vào danh sách các biển số xe đẹp
      }
    }

    return beautifulNumbers; // Trả về danh sách các biển số xe đẹp
  }

  bool isPrime(int n) { // Hàm kiểm tra số nguyên tố
    if (n < 2) return false; // Nếu n nhỏ hơn 2 thì không phải số nguyên tố
    for (int i = 2; i * i <= n; i++) { // Duyệt từ 2 đến căn bậc hai của n
      if (n % i == 0) return false; // Nếu n chia hết cho i thì không phải số nguyên tố
    }
    return true; // Nếu không chia hết cho bất kỳ số nào từ 2 đến căn bậc hai của n thì là số nguyên tố
  }

  bool isPalindrome(int n) { // Hàm kiểm tra số đối xứng
    String s = n.toString(); // Chuyển số n thành chuỗi
    for (int i = 0; i < s.length ~/ 2; i++) { // Duyệt từ đầu chuỗi đến giữa
      if (s[i] != s[s.length - 1 - i]) return false; // Nếu ký tự tại vị trí i không bằng ký tự tại vị trí đối xứng thì không phải số đối xứng
    }
    return true; // Nếu tất cả các cặp ký tự đối xứng đều bằng nhau thì là số đối xứng
  }
}
