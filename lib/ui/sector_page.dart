import 'package:flutter/material.dart';
import 'package:sme/widgets/text_widgets.dart';

class SectorPage extends StatefulWidget {
  @override
  _SectorPageState createState() => _SectorPageState();
}

class _SectorPageState extends State<SectorPage> {

  final List<String> listSectors = [
    'All Kinds of Manufacturing Industries',
    "All Kinds of Service Industries",
    'Agro & Food Processing Industry',
    'Professional Firms & Services',
    'Franchisees and Distributors',
    'IT & IT Enabled Services',
    'Automobiles & Automotive Engineering',
    'Capital Goods Manufacturers and Suppliers',
    'Education and Business training',
    'Electronics & Electricals',
    'Entertainment & Media',
    'Energy and Environment',
    'FMCG, E-commerce and Retailers',
    'Exhibitions Services and Marketing',
    'Finance & Banking Services',
    'Furniture & Fixtures',
    'Hospitality, Travel & Tourism',
    'Information and Tele Communications',
    'Infrastructure & Realty Sector',
    'Logistics, warehousing and Shipping',
    'Digital Marketing and Promotion',
    'Project Management Consultancy',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: ListView.builder(
          itemCount: listSectors.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () => print('Tapped'),
                title: Text(listSectors[index], style: textRegular()),
              ),
            );
          }),
    );
  }
}
