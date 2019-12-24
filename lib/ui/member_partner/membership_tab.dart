import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sme/models/drawer_model.dart';
import 'package:sme/ui/member_partner/partner/chapter_form.dart';
import 'package:sme/widgets/text_widgets.dart';

class MembershipTab extends StatefulWidget {
  @override
  _MembershipTabState createState() => _MembershipTabState();
}

class _MembershipTabState extends State<MembershipTab> {

  final List membershipTabs = [
    'Membership Advantages',
    'Chapters',
    'Who can become a member?',
    'Member fee - annual',
    'Forum meething participation fee',
    'Membership form',
    'Payment for membership',
  ];

  @override
  Widget build(BuildContext context) {
    //return SingleChildScrollView(
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[

          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(color: Colors.grey[350],
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30))
            ),
            child: Text(membership, maxLines: 4, style: textRegular()),
          ),


          SizedBox(
            height: 500,
            child: ListView.builder(itemCount: membershipTabs.length, itemBuilder: (context, index){
              return Container(
                child: Card(
                  child: ListTile(
                    onTap: (){
                      _viewPageByIndex(index);
                    },
                    leading: Icon(Icons.add),
                    title: Text(membershipTabs[index], style: textRegular(),),
                  ),
                ),
              );
            }),
          )

        ],
      );
    //);
  }

  void _viewPageByIndex(int index) {

    switch(index){
      case 0:
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChapterFormPage()),
        );
        break;
      case 2:
        break;
      case 3:
        break;
      case 4:
        break;
      case 5:
        break;
      case 6:
        break;
    }
  }
}
