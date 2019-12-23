import 'package:flutter/material.dart';
import 'package:sme/widgets/text_widgets.dart';

class EventPage extends StatefulWidget {
  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Event Page', style: textHeading(),),
    );
  }
}
