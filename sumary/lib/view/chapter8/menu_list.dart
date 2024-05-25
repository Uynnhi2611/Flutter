import 'package:flutter/material.dart';
import 'hero.dart';
import 'reminders.dart';
import 'birthdays.dart';
class MenuListTileWidget extends StatefulWidget {
  const MenuListTileWidget({super.key});

  @override
  State<MenuListTileWidget> createState() => _MenuListTileWidgetState();
}

class _MenuListTileWidgetState extends State<MenuListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.cake),
          title: Text('Birthdays'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Birthdays(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.sentiment_satisfied),
          title: Text('Hero App'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HeroApp(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.alarm),
          title: Text('Reminders'),
          onTap: () {
            // Navigator.pop(context);//đóng trang hiện tại và trở về trang trước
            // Navigator.push( //điều hướng trang bằng cách truyền trực tiếp router
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => Reminders(),
            //   ),
            // );
            // Navigator.pushNamed(context, '/reminder'); //điều hướng trang sử dụng tên của router được khai báo trong stalesswidget ở home page
            // Navigator.of(context).pushNamed('/reminder');//Sử dụng Navigator.of truyền vào tham số context khi thêm .push sẽ không cần truyển vào tham số context nữa.
            print(Navigator.canPop(context));//Kiểm tra có phải page duy nhất không, nếu là page duy nhất thì không thể trở về trang trước, trả về giá trị false
            // Navigator.defaultGenerateInitialRoutes(NavigatorState(),'/reminder');//???
            // NavigatorState? navigatorState = Navigator.maybeOf(context);
            // if (navigatorState != null) {
            //   navigatorState
            //     ..pop()
            //     ..pop()
            //     ..pushNamed('/birthday');
            // }
            // print(Navigator.maybeOf(context));// trả về một đối tượng Navigator nếu có, và null nếu không có Navigator nào được tìm thấy.
            // print(Navigator.maybePop(context));
            Navigator.popAndPushNamed(context, '/reminder');// pop page hiện tại sau đó chuyển sang page khác dựa vào name route
            // Navigator.popUntil(context, (route) => route.isFirst);//Xóa màn hình khi đạt điều kiện predicate = true
            // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Reminders(),), (route) => false) //được sử dụng để thêm một màn hình mới vào stack và xóa tất cả các màn hình trên stack cho đến khi một điều kiện cụ thể được đáp ứng
            // Navigator.pushNamedAndRemoveUntil(context, newRouteName, (route) => false)//được sử dụng để thêm một màn hình mới bằng routeName vào stack và xóa tất cả các màn hình trên stack cho đến khi một điều kiện cụ thể được đáp ứng
            // Navigator.pushReplacement(context, newRoute); //ghi đè: chuyển trang mới và xóa trang hiện tại
            // Navigator.pushReplacementNamed(context, routeName) //ghi đè: chuyển trang mới bằng nameRouter và xóa trang hiện tại
            // Navigator.removeRoute(context, route); //dùng để loại bỏ một route cụ thể khỏi stack của Navigator
            // Navigator.removeRouteBelow(context, anchorRoute);//dùng để xóa route nằm trước của 1 route cụ thể trong stack của Navigator
            // Navigator.replaceRouteBelow(context, anchorRoute: anchorRoute, newRoute: newRoute);//dùng để thay thế một route nằm trước 1 route cụ thể trong stack của Navigator
            // Navigator.restorablePopAndPushNamed(context, '/reminder'); //dụng để pop (xóa) màn hình hiện tại khỏi stack của Navigator và sau đó push (thêm) một màn hình mới vào stack, với khả năng khôi phục trạng thái của màn hình pop ra sau khi quay lại.
            // Navigator.restorablePush(context, (context, arguments) => null);///???
            // Navigator.restorablePushAndRemoveUntil(context, (context, arguments) => null, (route) => false)///????
            // Navigator.restorablePushNamed(context, routeName)
          },
        ),
        Divider(color: Colors.grey),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Setting'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}