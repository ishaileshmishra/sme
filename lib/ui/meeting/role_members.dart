import 'package:flutter/material.dart';
import 'package:sme/widgets/text_widgets.dart';


class RoleMembersScreen extends StatefulWidget {
  @override
  _RoleMembersScreenState createState() => _RoleMembersScreenState();
}

class _RoleMembersScreenState extends State<RoleMembersScreen> {
  List<String> listTermsCondition = [
    "Share genuine & authentic information about existing business",
    "Regular Attendance at the business meetings.",
    "Provide Qualified and Genuine Referral Cases and Contacts amongst Members / Participants",
    "Adoption of business ethics and professional approach towards other members",
    "Present unique and authentic business ideas to attract Buyers and new Business Partners",
    "Suggestions for development of quality services for better business growth of members.",
    " Exchange genuine business enquiries and requirements at Forum and to members.",
    "Establish and enhance business contacts with other members",
    " Share issues and problems in writing on Company letterhead",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ROLE & RESPONSIBILITY OF THE MEMBER', style: textHeading(),),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: ListView.builder(itemCount: listTermsCondition.length, itemBuilder: (context, index){
          return Card(
              elevation: 2,
              child: Container(
                padding: EdgeInsets.all(12),
                child: ListTile(
                  onTap: ()=> debugPrint('Hi Everyone'),
                  title: Text(listTermsCondition[index], style: textSmall()),
                  leading: Icon(Icons.adjust, color: Colors.blue, size: 30,),
                )
              )
          );
        }),
      ),
    );
  }
}
