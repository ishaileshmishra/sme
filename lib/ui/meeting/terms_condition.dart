import 'package:flutter/material.dart';
import 'package:sme/widgets/text_widgets.dart';


class TermsConditionScreen extends StatefulWidget {
  @override
  _TermsConditionScreenState createState() => _TermsConditionScreenState();
}

class _TermsConditionScreenState extends State<TermsConditionScreen> {

  List<String> listTermsCondition = [
    "Annual Membership is mandatory for joining the Business Forum",
    "Member can attend 24 meetings annually at any city by paying Delegate Fee.",
    "Members should register on or before 7 days of each meeting.",
    "Members must bring business cards and company profile at every meeting",
    "Members must provide authentic and genuine information about business activities and requirements",
    "Each member will get an opportunity for presentation / speaking",
    "No Referral Fee or Commission will be charged by the Chamber",
    "Members can deal directly with other members at their own risk and responsibility",
    "Exclusive Branding Opportunity will be made available on chargeable basis.",
    "Participants should provide information about business transactions or any other business deals completed through this business forum for our record & reference as well as to get awards and rewards.",
    "The Forum will not be responsible for any disputes, business loss, legal action, cheating cases, litigation arising amongst members, buyers, suppliers or business partnership generated through these business meetings.",
    "The member should approach the Forum to identify New Business opportunities & Export Markets, Joint Ventures, Technology Transfers and Collaborations.",
    "The member should provide proper information and documentary evidence to resolve issues and problems related to Industries, Banking and other businesses",
    "Membership of the Forum will be withdrawn, if Forum receives any complaint from other members regarding false information, cheating, fraud, deceitful misbehaviour with other delegates, unethical business activities or legal and criminal actions or proceedings against the concerned member. The Membership Fee and Participation Fee will not be refunded and the concerned member will not be allowed to continue membership & to attend further meetings.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms & Condition', style: textHeading(),),
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
