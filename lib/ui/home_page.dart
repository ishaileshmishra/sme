import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sme/widgets/color_widgets.dart';
import 'package:sme/widgets/text_widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Theme.of(context).primaryColor,
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // Auto scroll banner
          autoScrollBanner(),

          //SME Business Forum Introduction
          Container(
            padding: EdgeInsets.only(left: 20, top: 20),
            alignment: Alignment.topLeft,
            child: Text('SME Business Forum', style: textHeading()),
          ),

          Container(
            padding: EdgeInsets.only(left: 10, top: 8, right: 10),
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20))
              ),
              child: Text(
                  "SME Business Forum has been providing networking forum & platform "
                  "for Entrepreneurs and Senior Executives from Small, Medium, "
                  "Large Industrial and Allied Business Sectors, Multinational Companies, "
                  "Government PSUs, Government Agencies and Start-ups to establish and "
                  "enhance business contacts, exchange business leads & enquiries, identify potential "
                  "business & investment partners, introduce new products and services, promote, "
                  "market & brand products & services, "
                  "new business partnership with potential suppliers, manufacturers, buyers, "
                  "service providers, strategic partners, distributors, franchisees, agents, "
                  "companies and clients, connectivity with purchase and procurement departments of SMEs,"
                  " Corporates, MNCs, Government PSUs to explore emerging business opportunities and vendor "
                  "registration for supply and procurement.",
                  style: textSmall()),
            ),
          ),


          Container(
            padding: EdgeInsets.only(left: 20, top: 20),
            alignment: Alignment.topLeft,
            child: Text('Opportunities', style: textHeading()),
          ),


          Container(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: SizedBox(height: 160, child: horizontalCircleList(context)),
          ),

          // Launched BY
          Container(
            padding: EdgeInsets.only(left: 20, top: 10),
            alignment: Alignment.topLeft,
            child: Text('Launched by', style: textHeading()),
          ),

          Container(
            padding: EdgeInsets.only(left: 10, top: 8, right: 10),
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20))
              ),

              child: Text(
                  "SME Business Forum is initiated by SME Chamber of India on 3rd May 2008 and formerly known as the “SME Business Club” and launched at the hands of "
                  "Dr. C. Rangarajan - Chairman, Economic Advisory Council to the Prime Minister & Former Governor of "
                  "Reserve Bank of India at Mumbai in the presence of Mr. C. B. Bhave - Chairman, "
                  "Securities & Exchange Board of India (SEBI), Mr. Dinesh Rai - Secretary, Ministry of "
                  "MSME, Govt. of India, Mr. G. N. Bajpai - Former Chairman, SEBI, Mr. T. C. Venkat Subramaniam - CMD, "
                  "EXIM Bank of India and Mr. Chandrakant Salunkhe Founder and President - "
                  "SME Chamber of India & CMD - Macro Group of Companies.",
                  style: textSmall()),
            ),
          ),

          // Uniqueness of this platforms
          Container(
            padding: EdgeInsets.only(left: 20, top: 20),
            alignment: Alignment.topLeft,
            child: Text('Uniqueness of this Platform', style: textHeading()),
          ),

          Container(
            padding: EdgeInsets.only(left: 10, top: 8, right: 10),
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20))
              ),

              child: Text(
                  "Entrepreneurs and Executives of the companies attend various networking "
                  "platforms at local level or specific chapters or groups and they are restricted "
                  "to attend meetings at other places or chapters, but SME Business Forum will give "
                  "a unique opportunity to its members to participate at Forum meetings at Mumbai "
                  "and simultaneously to attend meetings at different locations or chapters to explore "
                  "emerging business opportunities as well as "
                  "enhance connectivity at local and National levels.",
                  style: textSmall()),
            ),
          ),

          Container(
            padding: EdgeInsets.only(left: 20, top: 20, right: 20),
            alignment: Alignment.topLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('PARTNERS', style: textHeading()),
                Text('View More', style: textSmall())
              ],
            ),
          ),

          SizedBox(height: 10),

          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: SizedBox(height: 400, child: horizontalCirclePartnerList(context)),
          ),
        ],
      ),
    ));
  }
}
