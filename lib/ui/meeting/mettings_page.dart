import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sme/ui/meeting/delegate.dart';
import 'package:sme/ui/meeting/formate_screen.dart';
import 'package:sme/ui/meeting/role_members.dart';
import 'package:sme/ui/meeting/schedule_screen.dart';
import 'package:sme/ui/meeting/sponsership.dart';
import 'package:sme/ui/meeting/terms_condition.dart';
import 'package:sme/widgets/text_widgets.dart';

class MeetingsPage extends StatefulWidget {
  @override
  _MeetingsPageState createState() => _MeetingsPageState();
}

class _MeetingsPageState extends State<MeetingsPage> {
  List listMeetingTitle = [
    'Schedule',
    'Formate',
    'Delegate Fee',
    'Terms & Conditions',
    'Role Of Members',
    'Sponsership',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            itemCount: listMeetingTitle.length,
            itemBuilder: (context, index) {
              return Container(
                child: Card(
                  elevation: 1,
                  child: ListTile(
                    onTap: () {
                      _navToIndexScreen(index);
                    },
                    title: Text(listMeetingTitle[index], style: textRegular()),
                    trailing: Icon(CupertinoIcons.forward),
                  ),
                ),
              );
            }));
  }

  void _navToIndexScreen(int index) {
    switch (index) {
      case 0:
        Navigator.push(context,
            MaterialPageRoute(builder: (_) {
          return ScheduleScreen();
        }));
        break;
      case 1:
        Navigator.push(context,
            MaterialPageRoute(builder: (_) {
          return FormatScreen();
        }));
        break;
      case 2:
        Navigator.push(context,
            MaterialPageRoute(builder: (_) {
          return DelegateScreen();
        }));
        break;
      case 3:
        Navigator.push(context,
            MaterialPageRoute(builder: (_) {
          return TermsConditionScreen();
        }));
        break;
      case 4:
        Navigator.push(context,
            MaterialPageRoute(builder: (_) {
          return RoleMembersScreen();
        }));
        break;
      case 5:
        Navigator.push(context,
            MaterialPageRoute(builder: (_) {
              return SponsershipScreen();
            }));
        break;
    }
  }
}
