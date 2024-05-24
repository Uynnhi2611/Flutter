import 'package:flutter/material.dart';

class MyTransformationContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildUserInfo(),
          SizedBox(height: 20),
          _buildPhysicalIndexSection(),
          SizedBox(height: 20),
          _buildPhysicalMetrics(),
          SizedBox(height: 20),
          _buildSaveButton(),
          SizedBox(height: 20),
          _buildLegend(),
          SizedBox(height: 20),
          _buildMyTransformationSection(),
          SizedBox(height: 20),
          TransformationGrid(),
        ],
      ),
    );
  }

  Widget _buildUserInfo() {
    return Center(
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/unsplash_RDcEWH5hSDE.png'),
          ),
          SizedBox(height: 10),
          Text(
            'User Name',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orange),
          ),
        ],
      ),
    );
  }

  Widget _buildPhysicalIndexSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'XX / 90 Day(s)',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.orange),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Physical Index', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Row(
              children: [
                SizedBox(width: 10),
                Image.asset('assets/images/gk60uK.tif.png', width: 16, height: 16),
                SizedBox(width: 5),
                Text('05/12/2022', style: TextStyle(fontSize: 16)),
                SizedBox(width: 10),
                Image.asset('assets/images/plus.png', width: 16, height: 16),
                SizedBox(width: 10),
                Image.asset('assets/images/share.png', width: 16, height: 16),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPhysicalMetrics() {
    return Table(
      columnWidths: {
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(2),
        2: FlexColumnWidth(1),
        3: FlexColumnWidth(1),
        4: FlexColumnWidth(2),
      },
      children: [
        _buildTableRow('assets/images/Vector.png', 'Weight', '0.0', 'kg', '-5 kg', Colors.green),
        _buildDivider(),
        _buildTableRow('assets/images/Group 1330.png', 'BMI', '10.5', 'kg/m²', '103', Colors.green),
        _buildDivider(),
        _buildTableRow('assets/images/Vector (1).png', 'Body Fat', '0.0', '%', '0.0', Colors.green),
        _buildDivider(),
        _buildTableRow('assets/images/Vector (2).png', 'Visceral Fat', '0.0', '%', '0.0', Colors.green),
        _buildDivider(),
        _buildTableRow('assets/images/Vector (3).png', 'Skeletal Muscle', '0.0', '%', '0.0', Colors.green),
        _buildDivider(),
        _buildTableRow('assets/images/Group 1332.png', 'Waistline', '0.0', 'cm', '0.0', Colors.green),
      ],
    );
  }

  TableRow _buildDivider() {
    return TableRow(children: [
      Divider(color: Colors.grey),
      Divider(color: Colors.grey),
      Divider(color: Colors.grey),
      Divider(color: Colors.grey),
      Divider(color: Colors.grey),
    ]);
  }

  TableRow _buildTableRow(String imagePath, String label, String value, String unit, String change, Color changeColor) {
    return TableRow(
      children: [
        _buildTableCell(Image.asset(imagePath, width: 24, height: 24)),
        _buildTableCell(Text(label, style: TextStyle(fontSize: 16))),
        _buildTableCell(_buildTextWithBackground(value, fontSize: 16)),
        _buildTableCell(Text(unit, style: TextStyle(fontSize: 16))),
        _buildTableCell(_buildTextWithBackground(change, fontSize: 16, color: changeColor)),
      ],
    );
  }

  Widget _buildTextWithBackground(String text, {double? fontSize, Color? color}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize ?? 16, color: color),
      ),
    );
  }

  Widget _buildTableCell(Widget child) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Center(child: child),
    );
  }

  Widget _buildSaveButton() {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Save'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFFC6C0F),
        ),
      ),
    );
  }

  Widget _buildLegend() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        LegendItem(color: Colors.green, label: 'Doing well'),
        LegendItem(color: Colors.orange, label: 'Constant'),
        LegendItem(color: Colors.red, label: 'Need help'),
        LegendItem(color: Colors.black, label: 'Last record'),
      ],
    );
  }

  Widget _buildMyTransformationSection() {
    return Column(
      children: [
        Center(
          child: Text(
            'My Transformation',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.orange),
          ),
        ),
        Center(
          child: Text(
            'Click here for testimonial guidelines. Your photos can be viewed by your consultant. If you wish to disable this, please proceed to Settings for configuration.',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class LegendItem extends StatelessWidget {
  final Color color;
  final String label;

  LegendItem({required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 8,
          backgroundColor: color,
        ),
        SizedBox(width: 5),
        Text(label),
      ],
    );
  }
}

class TransformationGrid extends StatelessWidget {
  final List<String> days = ['Day 1', 'Day 7', 'Day 15', 'Day 30', 'Day 60', 'Day 90'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(days.length ~/ 2, (index) {
          final day1 = days[index * 2];
          final day2 = days[index * 2 + 1];

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildDayColumn(day1),
              _buildDayColumn(day2),
            ],
          );
        }),
      ),
    );
  }

  Widget _buildDayColumn(String day) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 80,
              child: Text(
                day,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(width: 10),
            Container(
              width: 80,
              child: TextButton(
                onPressed: () {},
                child: Text('Share', style: TextStyle(color: Colors.orange)),
              ),
            ),
          ],
        ),
        SizedBox(height: 1),
        Row(
          children: [
            _buildImageContainer('Front'),
            SizedBox(width: 5),
            _buildImageContainer('Side'),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget _buildImageContainer(String label) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.grey),
          ),
          child: Center(
            child: Icon(Icons.add, size: 30, color: Colors.orange),
          ),
        ),
        SizedBox(height: 5),
        Text(label, style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}
