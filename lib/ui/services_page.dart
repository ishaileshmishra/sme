import 'package:flutter/material.dart';
import 'package:sme/widgets/text_widgets.dart';

class ServicesPage extends StatefulWidget {
  @override
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  final List<String> listServices = [
    'Develop and Enhancement of Contacts & Business Growth',
    "Explore emerging business opportunities at Regional & National level",
    'Supply to large corporates / MNCs / SMEs',
    'Launching of new products or services at National & International level',
    'Identification of business partners for Franchise, Marketing, Distribution and Supply Chain Management',
    'Sourcing of Quality Products, Advance Machinery, Equipment, Quality Raw Materials',
    'Guidance and Advisory Services for Business Growth and Transformation',
    'Channelise Bank Finance, Investment, Venture Capital, Private Equity, External Commercial Borrowing and Foreign Direct Investment',
    'Advocacy for Policy Change and Policy Implementation & secure interest of the Industry',
    'Setting up group of SMEs for Marketing and Promotion',
    'Mergers & Acquisitions',
    'Support for Joint Ventures, Collaborations, Contract Manufacturing & Technology Transfer with Indian and Foreign companies',
    'Connectivity with Executives from Purchase, Marketing, Sales, Export departments of various corporate, MNCs and Govt agencies / PSUs',
    'Transformation of SMEs into Emerging Enterprises',
    'Preparing companies for Investment, JV and Contract Manufacturing',
    'Providing information on latest Market Trends, Leads and change in Policy',
    'Import Facilitation and Identification of Manufactures & Suppliers from overseas markets',
    'Identify Advanced Technology, Technical Alliances and Turn-key Projects & Capital Goods',
    'Buy & Sell manufacturing units or Industrial premises amongst Indian and Foreign Investors',
    'Resolving issues and problems of Industry and Allied Business sectors',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: ListView.builder(
          itemCount: listServices.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () => print('Tapped'),
                title: Text(listServices[index], style: textRegular()),
              ),
            );
          }),
    );
  }
}
