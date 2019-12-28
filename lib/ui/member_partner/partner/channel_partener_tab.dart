import 'package:flutter/material.dart';
import 'package:sme/models/drawer_model.dart';
import 'package:sme/ui/member_partner/member/chapter_form.dart';
import 'package:sme/widgets/text_widgets.dart';

class ChannelPartnerTab extends StatefulWidget {
  @override
  _ChannelPartnerTabState createState() => _ChannelPartnerTabState();
}

class _ChannelPartnerTabState extends State<ChannelPartnerTab> {
  final List membershipTabs = [
    'Advantaged and opportunities for channel partners',
    'Additional Advantages',
    'Business meeting formate',
    'Who can become a channel partner?',
    'Focus Sectors',
    'Options of meetings',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.grey[350],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          child: Text(membership, maxLines: 4, style: textRegular()),
        ),
        SizedBox(
          height: 500,
          child: ListView.builder(
              itemCount: membershipTabs.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Card(
                    child: ListTile(
                      onTap: () {
                        _viewPageByIndex(context, index);
                      },
                      leading: Icon(Icons.add),
                      title: Text(
                        membershipTabs[index],
                        style: textRegular(),
                      ),
                    ),
                  ),
                );
              }),
        )
      ],
    );
    //);
  }
}

void _viewPageByIndex(BuildContext context, int index) {
  switch (index) {
    case 0:
      break;
    case 1:
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
