import 'package:flutter/material.dart';
import 'package:sme/widgets/text_widgets.dart';


class FormatScreen extends StatefulWidget {
  @override
  _FormatScreenState createState() => _FormatScreenState();
}

class _FormatScreenState extends State<FormatScreen> {

  List<String> listContainer = [
    "Meeting will be held twice in a month (check event page)",
    "Full day business meeting includes Introduction, Presentations, Networking and B2B / B2C / B2G",
    "Members will get an opportunity to participate annually at 24 meetings",
    "Members can attend meetings at other cities and prior permission and registration is mandatory",
    "Introduction of new Entrepreneurs and members",
    "Exchange of Business Enquiries, Referrals & Business requirements / needs",
    "Keynote address by experts on specific topics",
    "Deliberation on various issues and problems of Industries and Business Sector",
    "Launching, Branding and Marketing of new Products and Services",
    "Interaction with Investors, Experts, Mentors, successful SME Entrepreneurs, Consultants and Thought Leaders",
    "Demonstrations of products, machines, equipment and new services",
    "Networking lunch",
    "Interface with Bankers, Policy Makers, CEOs of MNCs, Financial Institutions, Corporates, Government Agencies and other Stakeholders",
    "Mentoring Sessions for Young & Start-Up Entrepreneurs",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formate', style: textHeading(),),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: ListView.builder(itemCount: listContainer.length, itemBuilder: (context, index){
          return Card(
            elevation: 2,
            child: Container(
              padding: EdgeInsets.all(12),
              child: ListTile(
                onTap: ()=> debugPrint('Hi Everyone'),
                title: Text(listContainer[index], style: textSmall()),
                leading: Icon(Icons.adjust, color: Colors.blue, size: 30,),
              )
            )
          );
        }),
      ),
    );
  }
}
