import 'package:flutter/material.dart';
import 'package:sme/widgets/text_widgets.dart';

class ExhibitionPage extends StatefulWidget {
  @override
  _ExhibitionPageState createState() => _ExhibitionPageState();
}

class _ExhibitionPageState extends State<ExhibitionPage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: SizedBox(
        height: 500,
        child: ListView.builder(
            itemCount: 5,
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
                  title: Text('Smart and Sustainable City Solutions $index', style: textRegular()),
                  subtitle: Text('Place grounds, Benguluru $index', style: TextStyle(fontSize: 14, color: Colors.redAccent)),
                ),
              );
            }),
      ),

    );
  }
}
