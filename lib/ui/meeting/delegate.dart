import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sme/models/drawer_model.dart';
import 'package:sme/widgets/text_widgets.dart';


class DelegateScreen extends StatefulWidget {
  @override
  _DelegateScreenState createState() => _DelegateScreenState();
}

class _DelegateScreenState extends State<DelegateScreen> {


  List<AboutModel> aboutList = [
    AboutModel(
        'Delegate Fee for participation of Meetings:',
        [
          'Delegate Registration fee will be applicable for each Forum meeting',
          'Delegate Fee will be applicable to participate in another city mentioned in the Calendar',
          'Delegate Fee includes Networking Breakfast & Lunch & Presentation opportunity',
          'Delegate Fee to be paid 7 days prior to each meeting',
          'Turnover above Rs. 300 crore (Mid & Large SMEs)',
          'Database will be shared only with members and not One-Time Delegates'
        ],
        Icons.adjust),
    AboutModel(
        'Participation fee for each forum meeting:',
        [
          'No participation fee for member for 12 Forum Meetings',
          'Rs. 2,000/- for additional participant from same member company',
          'Delegate Fee includes Networking Breakfast & Lunch',
        ], Icons.adjust),
    AboutModel('Presentation Opportunity:', [
          'Presentation opportunity / Speech for 10 minutes each Forum Meeting Charges - Rs. 6,000/-',
          'Introduction of your Company for 2 min Charges – Rs. 2,000/-',
        ], Icons.adjust),
    AboutModel('New Product Launch, Marketing & Promotion at Business Forum Meetings:',
        [
          'New Product Launch : Charges: Rs. 1,00,000/- (Table Space at the Venue, 1 Standee Banner, 10 min Presentation, 2 Complimentary Invitations, List of Delegates post event)',
          'Table space at the Venue : Charges: Rs. 50,000/- (Tables Space, 1 Standee Banner, 2 Complimentary Invitations, List of Delegates post event)',
          '1 Standee Banner at the Venue OR Delegate Kit Insertion : Charges: 10,000/- (1 Standee Banner & 1 Complimentary Invitation)'
        ],
        CupertinoIcons.add),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delegate Fee', style: textHeading(),),
      ),



      body: ListView.builder(
        itemCount: aboutList.length,
        itemBuilder: (context, i) {
          return ExpansionTile(
            title: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: ListTile(
                title: Text(aboutList[i].title, style: textRegular()),
              ),
            ),
            children: <Widget>[
              new Column(
                children: _buildExpandableContent(aboutList[i]),
              ),
            ],
          );
        },
      ),


    );
  }

  _buildExpandableContent(AboutModel vehicle) {
    List<Widget> columnContent = [];
    for (String content in vehicle.contents)
      columnContent.add(
        new ListTile(
          title: ListTile(
            onTap: ()=> debugPrint('Hi Everyone'),
            title: Text(content, style: textSmall()),
            leading: Icon(Icons.adjust, color: Colors.blue, size: 30,),
          )
      ));

    return columnContent;
  }
}
