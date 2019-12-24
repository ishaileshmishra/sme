import 'package:flutter/material.dart';
import 'package:sme/widgets/text_widgets.dart';

class EventPage extends StatefulWidget {

  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: SizedBox(
        height: 500,
        child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                onTap: ()=> print('Tapped'),
                leading: Container(
                  child: Image.network('https://upload.wikimedia.org/wikipedia/commons/5/5b/Background_green_icon.png'),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30))
                  ),
                ),
                title: Text('SME Bussiness Growth Sumit $index', style: textRegular()),
                subtitle: Text('Pune $index', style: TextStyle(fontSize: 14, color: Colors.redAccent)),
              ),
            );
          }),
      ),

    );
  }
}
