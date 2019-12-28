import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sme/models/drawer_model.dart';
import 'package:sme/widgets/text_widgets.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {

  List<AboutModel> aboutList = [
    AboutModel('VISION',
        [
          "Provide networking platform to Entrepreneurs and Senior Executives from Small, Medium, Large Industrial and Allied Business Sectors, MNCs, Government PSUs, Government Agencies and Start-ups to establish & enhance business contacts, exchange business leads & enquiries, identify business & investment partners, introduction of unique products and services, promotion, marketing and branding, establish Joint Venture or Alliance, show-case innovation & inventions and share new business ideas and concepts to convert into commercial benefits",
          'Turnover upto Rs. 25 crore (Silver Category)',
          'Turnover from Rs. 26 to Rs.75 crore (Gold Category)',
          'Turnover from Rs. 76 to Rs.150 crore (Platinum Category)',
          'Turnover from Rs. 151 to Rs.300 crore (Diamond Category)',
          'Turnover above Rs. 300 crore (Mid & Large SMEs)',
          'To create groups of Mid & Large Corporates who are interested to establish contacts with SMEs to buy and sell, avail services and other business co-operation'
        ],
        CupertinoIcons.add),
    AboutModel('MISSION',
        [
          'To connect entrepreneurs from various parts of India',
          'To set-up Chapters & Groups at various cities of India',
          'To enhance business propositions and values',
          'To encourage SMEs to take advantage in the Era of Make - In - India',
          'To support SMEs to enhance foot-print at National & Global levels',
          'To assist SMEs to take advantage of Government Incentives & Schemes',
          'To fuel adequate finance & investment for growth and expansion',
          'To create databank of emerging & potential SMEs',
          'To brand innovative ideas, products & services at National & International levels',
          'To set-up Global SME Business Forum at London, Dubai, Shanghai, Hong Kong, Tokyo, Frankfurt, Singapore, Milan, New York, Chicago and Los Angeles by 2020',
        ],
        CupertinoIcons.add),
    AboutModel('OBJECTIVES',
        [
          "The main objective of SME Business Forum is to provide opportunities to entrepreneurs, business tycoons, Government officials, CEOs of top corporates & MNCs, thought leaders, initiator of ideas, master of minds, professionals, innovators, business coaches and experts from various industrial sectors, finance, technology, banking, marketing, branding, media, International Trade, Projects, IT, Digital Media, policy makers and Diplomats to share their experiences, thoughts, knowledge, unique ideas and other useful information to enhance skill, capacity, capabilities, reach and scale of members of SME Business Forum.",
          'KEY POINTS\nIdentify & Connect with new business partners',
          'Exchange business leads & enquiries',
          'Brand and market new products & services',
          'Identify suppliers, buyers and manufacturers',
          'Channelise investment, finance, venture capital or private equity',
          'Provide Referral Business and recommendations',
          'Establish Business Partnership',
          'To organise Executive Training Programs',
          'Commercialise business ideas and concepts'
        ],
        CupertinoIcons.add),
    AboutModel('ACTIVITIES',
        ['Vehicle no. 3', 'Vehicle no. 4', 'Vehicle no. 6'],
        CupertinoIcons.add),
    AboutModel('FOUNDER',
        ['Vehicle no. 3', 'Vehicle no. 4', 'Vehicle no. 6'],
        CupertinoIcons.add),
    AboutModel(
        'MANAGEMENT TEAM',
        ['Vehicle no. 3', 'Vehicle no. 4', 'Vehicle no. 6'],
        CupertinoIcons.add),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: aboutList.length,
        itemBuilder: (context, i) {
          return ExpansionTile(
            title: Container(
              padding: EdgeInsets.only(left: 12, top: 12, bottom: 12),
              decoration: BoxDecoration(
                color: Colors.grey[200]
              ),
              child: Text(aboutList[i].title, style: textSmall())
            ),
            children: <Widget>[
              new Column(
                children: _buildExpandableContent(aboutList[i]),
              ),
            ],
          );
        },
      ),
    );
  }

  _buildExpandableContent(AboutModel vehicle) {
    List<Widget> columnContent = [];
    for (String content in vehicle.contents)
      columnContent.add(
        new ListTile(
          title: Text(
            content,
            style: textSmall(),
          ),
          leading: new Icon(Icons.adjust, color: Colors.blue,),
        ),
      );

    return columnContent;
  }
}
