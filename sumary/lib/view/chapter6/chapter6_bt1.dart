import 'package:flutter/material.dart';
class chap6 extends StatefulWidget {
  const chap6({super.key});

  @override
  State<chap6> createState() => _chap6State();
}

class _chap6State extends State<chap6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text('Widget Tree'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: (){},
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.more_vert),
          )
        ],
        flexibleSpace: const SafeArea(
          child: Icon(
            Icons.photo_camera,
            size: 75,
            color: Colors.white70,
          ),
        ),
        bottom: PreferredSize(
          child: Container(
            color: Colors.lightGreen.shade100,
            height: 75,
            width: double.infinity,
            child: const Center(
              child: Text("Bottom"),
            ),
          ),
          preferredSize: const Size.fromHeight(75),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ContainerWithBoxDecorationWidget(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.play_arrow),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightGreen.shade100,
        child: Row(
          children: [
            Icon(Icons.pause),
            Icon(Icons.stop),
            Icon(Icons.access_time),
            Padding(
              padding: EdgeInsets.all(32.0),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
      ),
    );
  }
}
class ContainerWithBoxDecorationWidget extends StatelessWidget {
  ContainerWithBoxDecorationWidget({
    Key? key,
  }) : super(key: key);
  // Create a List of Menu Item for PopupMenuButton
  List<TodoMenuItem> foodMenuList = [
    TodoMenuItem(title: 'Fast Food', icon: Icon(Icons.fastfood)),
    TodoMenuItem(title: 'Remind Me', icon: Icon(Icons.add_alarm)),
    TodoMenuItem(title: 'Flight', icon: Icon(Icons.flight)),
    TodoMenuItem(title: 'Music', icon: Icon(Icons.audiotrack)),
  ];
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();
  // Order to Save
  Order _order = Order();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerRight,
          child:
          TextButton(
            onPressed: (){},
            child: Container(
              height: 100.0,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100.0),
                  bottomRight: Radius.circular(100.0),
                  topLeft: Radius.circular(100.0),
                  topRight: Radius.circular(100.0),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    Colors.lightGreen.shade500,
                  ],
                ),
              ),
              child: Center(
                child: RichText(
                  text: TextSpan(
                      text: 'Click ',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: 'Me!',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.red,
                          ),
                        ),
                      ]
                  ),
                ),
              ),
            ),
          ),
        ),
        Divider(
          height: 50,
          color: Colors.black,
          endIndent: 50,
          indent: 50,//thụt zo 50
        ),
        Align(
          alignment: Alignment.centerLeft,
          child:
          TextButton(
            onPressed: (){},
            child: Container(
              height: 100.0,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100.0),
                  bottomRight: Radius.circular(100.0),
                  topLeft: Radius.circular(100.0),
                  topRight: Radius.circular(100.0),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    Colors.redAccent.shade400,
                  ],
                ),
              ),
              child: Center(
                child: Text(
                  'Click Me!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.blue,
                  ),
                ),
              ),
            ),
          ),
        ),
        Divider(
          height: 50,
          color: Colors.black,
          endIndent: 50,
          indent: 50,//thụt zo 50
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.flight),
          iconSize: 42.0,
          color: Colors.redAccent,
          tooltip: 'Flight',
        ),
        Divider(
          height: 50,
          color: Colors.black,
          endIndent: 50,
          indent: 50,//thụt zo 50
        ),
        PopupMenuButton<TodoMenuItem>(
          icon: Icon(Icons.view_list),
          onSelected: ((valueSelected) {
            print('valueSelected: ${valueSelected.title}');
          }),
          itemBuilder: (BuildContext context) {
            return foodMenuList.map((TodoMenuItem todoMenuItem) {
              return PopupMenuItem<TodoMenuItem>(
                value: todoMenuItem,
                child: Row(
                  children: <Widget>[
                    Icon(todoMenuItem.icon.icon),
                    Padding(padding: EdgeInsets.all(8.0),),
                    Text(todoMenuItem.title),
                  ],
                ),
              );
            }).toList();
          },
        ),
        Divider(
          height: 50,
          color: Colors.black,
          endIndent: 50,
          indent: 50,//thụt zo 50
        ),
        ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.map),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.airport_shuttle),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.brush),
              onPressed: () {},
            ),
          ],
        ),
        Form(
          key: _formStateKey,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Espresso',
                    labelText: 'Item',
                  ),
                  validator: (value) => _validateItemRequired(value!),
                  onSaved: (value) => _order.item = value!,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: '3',
                    labelText: 'Quantity',
                  ),
                  validator: (value) => _validateItemCount(value!),
                  onSaved: (value) => _order.quantity = int.tryParse(value!)!,
                ),
                TextButton(
                  onPressed: (){
                    _submitOrder();
                  },
                  child: Text('Save'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
  String? _validateItemRequired(String value) {
    return value.isEmpty ? 'Item Required' : null;
  }
  String? _validateItemCount(String value) {
    // Check if value is not null and convert to integer
    int? _valueAsInteger = value.isEmpty ? 0 : int.tryParse(value);
    return _valueAsInteger == 0 ? 'At least one Item is Required' : null;
  }
  void _submitOrder() {
    if(_formStateKey.currentState!.validate()) {
      _formStateKey.currentState!.save();
      print('Order Item: ${_order.item}');
      print('Order Quantity: ${_order.quantity}');
    }
  }
}

class TodoMenuItem {
  final String title;
  final Icon icon;
  TodoMenuItem({required this.title, required this.icon});
}
class Order {
  late String item;
  late int quantity;
}