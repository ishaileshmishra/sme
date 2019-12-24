import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sme/widgets/text_widgets.dart';


class ScheduleScreen extends StatefulWidget {
  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {

  List locations = [
    'Mumbai', 'pune', 'Ahemdabad', 'Nasik', 'Chennai', 'Benguluru', 'Surat', 'Rajkot', 'Haiderabad', 'Vadodara',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule', style: textHeading())),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[


            SizedBox(
              height: 50,
              child: ListView.builder(scrollDirection: Axis.horizontal, itemCount: locations.length, itemBuilder: (context, index){
                return Container(
                  margin: EdgeInsets.only(left: 8),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: CupertinoColors.activeOrange,
                    borderRadius: BorderRadius.all(Radius.circular(25))//only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50))
                  ),
                  child: Center(
                    child: Text(locations[index], style: TextStyle(color: Colors.white, fontSize: 18, wordSpacing: 1.2)),
                  ),
              );}),
            ),

            SizedBox(height: 20),

            Table(
              //defaultColumnWidth: FixedColumnWidth(150.0),
              border: TableBorder(
                horizontalInside: BorderSide(
                  color: Colors.blue,
                  style: BorderStyle.solid,
                  width: 1.0,
                ),
                verticalInside: BorderSide(
                  color: Colors.blue,
                  style: BorderStyle.solid,
                  width: 1.0,
                ),
              ),
              children: [
                _buildTableRow("December - 2019, January - 2020, February - 2020"),
                _buildTableRow("SME Business Growth Summit, SME Business Growth Summit, SME Business Growth Summit"),
                _buildTableRow("India SME Business Summit, SME Business Growth Summit, SME Business Growth Summit"),
                _buildTableRow("Inducesmile.com, Google.com, Flutter.dev"),
              ],
            ),

          ],
        ),
      ),
    );
  }

  TableRow _buildTableRow(String listOfNames) {
    return TableRow(
      children: listOfNames.split(',').map((name) {
        return Container(
          alignment: Alignment.centerLeft,
          child: Text(name, style: textSmall()),
          padding: EdgeInsets.all(8.0),
        );
      }).toList(),
    );
  }

}
