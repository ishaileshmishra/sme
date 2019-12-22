import 'package:flutter/material.dart';
import 'package:sme/widgets/text_widgets.dart';

class ChannelPartnerPage extends StatefulWidget {
  @override
  _ChannelPartnerPageState createState() => _ChannelPartnerPageState();
}

class _ChannelPartnerPageState extends State<ChannelPartnerPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Channel Partner Page', style: textHeading(),),
    );
  }
}
