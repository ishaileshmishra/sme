import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sme/widgets/color_widgets.dart';
import 'package:sme/widgets/text_widgets.dart';

class InstantiatedPage extends StatefulWidget {
  @override
  _InstantiatedPageState createState() => _InstantiatedPageState();
}

class _InstantiatedPageState extends State<InstantiatedPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Image.network('https://www.smebusinessforum.com/images/smechamberofindia.jpg'),
              Container(
                padding: EdgeInsets.only(left: 10, top: 8, right: 10),
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20))
                  ),
                  child: Text(
                      "SME Chamber of India has initiated SME Business Forum, a networking Forum and platform to explore emerging business opportunities for SMEs.SME Chamber of India, India’s leading organization, has been putting efforts for last 26 years for economic and business growth of Indian SMEs. The Chamber is on the forefront for policy change and policy implementation as well as integrating SMEs to identify business opportunities in India and Abroad, support them to explore new markets in India & Abroad, joint ventures, technology transfers, contract manufacturing with foreign companies and organising various activities for imparting knowledge and education amongst SMEs and strengthening them for global competitiveness and to take advantage in Make - In - India Era. We have been providing support to Start-Ups, young & women entrepreneurs to convert their new business ideas into profitable business ventures and enhancing their reach to avail business opportunities.Please log on www.smechamberofindia.com for more information about support services, advantages of membership & various events / activities.",
                      style: textSmall()),
                ),
              ),


              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('PARTNERS', style: textHeading()),
                    Text('view all', style: textSmall())
                  ],
                ),
              ),

              SizedBox(height: 20),

              Container(
                height: 400,
                child: horizontalCirclePartnerList(context),
              )

            ],
          ),
        ),
      ),
    );
  }
}
