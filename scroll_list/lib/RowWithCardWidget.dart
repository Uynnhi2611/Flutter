import 'package:flutter/material.dart';
class RowWithCardWidget extends StatelessWidget {
  const RowWithCardWidget({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(//Hiển thị item, dùng 4 widget để biểu diễn
        leading: const Icon(
          Icons.flight,
          size: 48.0,
          color: Colors.lightBlue,
        ),
        title: Text('Airplane $index'),
        subtitle: const Text('Very Cool'),
        trailing: Text(
          '${index * 7}%',
          style: const TextStyle(color: Colors.lightBlue),
        ),
        shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepOrange.withOpacity(1)),),
        // enableFeedback: ,//âm thanh khi nhấn
        selectedColor: Colors.green,
        splashColor: Colors.yellow,//Màu của hiệu ứng khi nhấn
        hoverColor: Colors.red,//Màu khi hover sử dụng trên web
        focusColor: Colors.pink,//Màu khi được focus
        visualDensity: VisualDensity.compact,//giãn nở item
        onFocusChange: (value) {//Bắt sự kiện thay đổi focus và thực hiện hành động
          print('change');
        },
        onLongPress: () {//Bắt sự kiện nhấn lâu và thực hiện hành động
          print('Long Press');
        },
        iconColor: Colors.purple,//Màu icon dùng được khi trong icon không sử dụng thuộc tính color
        titleTextStyle: TextStyle(color: Colors.pink),//Custom style cho title
        contentPadding: EdgeInsets.only(left:30),//Cách lề cho toàn bộ ListTile
        dense: false, //điều chỉnh khoảng cách giữa các phần tử con bên trong ListTile, khoảng cách nhỏ hơn khi dense=true
        // enabled: false, //Vô hiệu hóa item  khi đặt enable=false
        horizontalTitleGap: 1,//Điều chỉnh khoảng cách giữa title và leading
        isThreeLine: false,//cung cấp thêm 1 dòng subtitle khi được đặt  thành true
        // leadingAndTrailingTextStyle: ,//Custom style cho leading và Trailng
        minLeadingWidth: 40,//Chiều dài nhỏ nhất của vùng chứa leading
        // minVerticalPadding: 100,//chiều dài padding theo chiều dọc bottom va top
        selectedTileColor: Colors.red,//Màu background khi được select
        // subtitleTextStyle: ,//Custom style cho Subtittle
        // textColor: Colors.grey,//Điều chỉnh màu của toàn bộ Text trong ListTile
        // tileColor: Colors.grey,//Màu background
        // titleAlignment: ListTileTitleAlignment.titleHeight,//Vị trí của Trailing???

        // selected: true,
        onTap: () {
          print('Tapped on Row $index');
        },
      ),
    );
  }
}