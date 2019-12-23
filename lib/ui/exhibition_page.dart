import 'package:flutter/material.dart';
import 'package:sme/widgets/text_widgets.dart';

class ExhibitionPage extends StatefulWidget {
  @override
  _ExhibitionPageState createState() => _ExhibitionPageState();
}

class _ExhibitionPageState extends State<ExhibitionPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Exhibition Page', style: textHeading(),),
    );
  }
}
