import 'dart:ui';

import 'package:flutter/material.dart';

class MyHomePage_bai4_chap7 extends StatefulWidget {
  const MyHomePage_bai4_chap7({super.key});
  @override
  State<MyHomePage_bai4_chap7> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage_bai4_chap7> with
    TickerProviderStateMixin {
  //----------------------------------------------------------
  late AnimationController _controllerFloatUp;
  late AnimationController _controllerGrowSize;
  late Animation<double> _animationFloatUp;
  late Animation<double> _animationGrowSize;

  @override
  void initState() {
    super.initState();
    _controllerFloatUp = AnimationController(
      animationBehavior: AnimationBehavior.normal,//???
      debugLabel: 'He', //Một nhãn kiểu String được dùng trong debug
      lowerBound: 0.0, //Giới hạn dưới của animation
      upperBound: 1,  // Giới hạn trên của animation
      reverseDuration: Duration (seconds: 4), //Thời gian khi biến đổi nghịch: end - begin
      duration: Duration( seconds: 4), //Thời gian khi biến đổi thuận: begin - end
      vsync: this //Đồng bộ hóa các animation với tần số làm mới của màn hình
    );
    _controllerGrowSize = AnimationController(
        duration: Duration(seconds: 2),
        vsync: this
    );

  }
  @override
  void dispose() {
    _controllerFloatUp.dispose();
    _controllerGrowSize.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double _balloonHeight = MediaQuery.of(context).size.height / 2; //Chiều cao icon
    double _balloonWidth = MediaQuery.of(context).size.height / 3;  //Chiều rộng icon
    double _balloonBottomLocation = MediaQuery.of(context).size.height - _balloonHeight; //Vị trí của icon
    _animationFloatUp = Tween( //định nghĩa phạm vi giá trị mà một thuộc tính sẽ chuyển đổi qua trong quá trình animation
        begin: _balloonBottomLocation, //vị trí khi bắt đầu animation
        end: 0.0  //vị trí khi kết thúc animation
    ).animate(CurvedAnimation( // tạo animation cho 2 điểm Tween
        parent: _controllerFloatUp,
        curve: Curves.fastOutSlowIn //hiệu ứng animation chuyển đổi
    ));
    Animation
    _animationGrowSize = Tween(
        begin: 50.0,//kích thước khi bắt đầu animation
        end: _balloonWidth//kích thước sau khi kết thúc animation
    ).animate(CurvedAnimation(
        parent: _controllerGrowSize, //Animation cần áp dụng curve
        curve: Interval(
            0.5, //Thời gian bắt đầu hoạt ảnh GrowSize = 0.5* duration
            1,  //Thời gian kết thúc biến đổi hoạt ảnh = 1*duration
            curve: Curves.elasticInOut //hiệu ứng animation chuyển đổi
        )
    ));
    _controllerFloatUp.forward();
    _controllerGrowSize.forward();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Bài 4'),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
              Text('Animation Controller',style: TextStyle(fontSize: 25)),
              AnimatedBuilder(
                animation: _animationFloatUp,//Gán giá trị cho animation, ở đây vị trí aniation được gán
                builder: (context, child) { //Bắt đầu chạy animation
                  return Container(
                    child: child,
                    margin: EdgeInsets.only(
                      top: _animationFloatUp.value, //Gán giá trị vị trí
                    ),
                    width: _animationGrowSize.value, //Gán giá trị kích thước
                  );
                },
                child: GestureDetector(
                  onTap: () {
                    // _controllerFloatUp.reverseDuration: đặt thời gian cho hiệu ứng chạy nghich
                    // _controllerFloatUp.duration: đặt thời gian cho hiệu ứng chạy thuận chiều
                    // _controllerFloatUp.repeat(); //đặt hiệu ứng lặp lại nhiều lần cần sử dụng TickerProviderStateMixin
                    // print(_controllerFloatUp.view.value);//Trả về trạng thái của animation, trong trường hợp này trả về vị trí icon khi được tap
                    // print(_controllerFloatUp.isAnimating);//Animation đang chạy return true
                    // print(_controllerFloatUp.lastElapsedDuration);//Thời gian chạy animation tính từ lúc animation begin
                    // print(_controllerFloatUp.velocity);//Tốc độ thay đổi giá trị mỗi giây
                    // print(_controllerFloatUp.status);//Trạng thái của animation: đang chạy, chạy ngược chiều, chạy xong, tới điểm bắt đầu
                    // print(_controllerFloatUp.isDismissed);//Kiểm tra Trạng thái của animation có nằm ở điểm bắt đầu không
                    // _controllerFloatUp.animateBack(2);//????
                    // _controllerFloatUp.animateTo(30);//????
                    // _controllerFloatUp.clearListeners();//Xóa sự kiện đã thêm trong addListener
                    // _controllerFloatUp.addStatusListener((status) {print(status);});//Bắt sự kiện khi status thay đổi thì thực hiện hành động
                    // _controllerFloatUp.removeListener(() {});
                    // _controllerFloatUp.didRegisterListener();
                    // _controllerFloatUp.notifyStatusListeners(_controllerFloatUp.status);
                    // _controllerFloatUp.drive(child)//???
                    // _controllerFloatUp.reset();//Quay lại trạng thái bắt đầu và chạy lại animation
                    // _controllerFloatUp.stop();//??
                    // _controllerFloatUp.resync(this);
                    // _controllerFloatUp.fling(velocity: 50.0);//???

                    if (_controllerFloatUp.isCompleted) {//Kiểm tra hiệu ứng đã chạy xong chưa
                      _controllerFloatUp.reverse();//chạy hiệu ứng theo chiều nghịch
                      _controllerGrowSize.reverse();
                      // _controllerFloatUp.dispose();//Hủy hiệu ứng animation
                      // _controllerFloatUp.addListener(() {print('hehe');});//Thêm sự kiện vào animation
                    }
                    else {
                      _controllerFloatUp.forward();//chạy hiệu ứng theo chiều thuận
                      _controllerGrowSize.forward();
                    }
                  },
                  child: Image.asset(
                      'images/balloon.png',
                      height: _balloonHeight,
                      width: _balloonWidth
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
