import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(StorageService()); // Đăng ký StorageService với GetX để có thể tìm thấy nó sau này.
  runApp(MyApp());
}

// CounterController là một lớp mở rộng GetxController, được sử dụng để quản lý trạng thái.
class CounterController extends GetxController {
  var count = 0.obs; // Biến đếm được quản lý bởi GetX, cho phép cập nhật UI khi giá trị thay đổi.

  // Các phương thức onInit, onReady, và onClose giúp theo dõi vòng đời của controller.
  @override
  void onInit() {
    super.onInit();
    print('CounterController is initialized');
  }

  // Phương thức increment được gọi khi người dùng nhấn nút 'Increment'.
  void increment() {
    count++;
  }
}

// StorageService là một lớp mở rộng GetxService, được sử dụng để quản lý dữ liệu lâu dài.
class StorageService extends GetxService {
  var data = ''.obs; // Biến lưu trữ dữ liệu dưới dạng chuỗi.
}

// MyApp là widget gốc của ứng dụng, nơi định nghĩa các route và theme.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/', // Route ban đầu khi ứng dụng được mở.
      getPages: [ // Định nghĩa các trang và route tương ứng.
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/second', page: () => SecondScreen()),
      ],
      theme: ThemeData(primarySwatch: Colors.blue), // Theme chung cho ứng dụng.
      home: HomeScreen(), // Trang chủ của ứng dụng.
    );
  }
}

// HomeScreen là trang chủ, nơi hiển thị số lượng và các nút điều khiển.
class HomeScreen extends StatelessWidget {
  final CounterController _controller = Get.put(CounterController()); // Đăng ký CounterController.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GetX Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('Count: ${_controller.count}')), // Hiển thị số lượng và cập nhật tự động.
            ElevatedButton(
              onPressed: _controller.increment, // Gọi phương thức increment khi nhấn nút.
              child: Text('Increment'),
            ),
            // Các nút khác để điều hướng và hiển thị snackbar.
          ],
        ),
      ),
    );
  }
}

// SecondScreen hiển thị bottom sheet.
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.bottomSheet(Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('This is a bottom sheet'),
              ),
            ));
          },
          child: Text('Show Bottom Sheet'),
        ),
      ),
    );
  }
}
