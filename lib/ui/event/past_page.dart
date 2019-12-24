import 'package:flutter/material.dart';
import 'package:sme/widgets/text_widgets.dart';

class PastPage extends StatefulWidget {

  @override
  _PastPageState createState() => _PastPageState();

}

class _PastPageState extends State<PastPage> {

  @override
  Widget build(BuildContext context) {

    List years = ['2001','2002','2003','2004','2005','2006','2007','2008','2009','2010','2011','2012','2013','2014','2015','2016','2017','2018','2019', ];

    return Container(
      child: Column(
        children: <Widget>[

          SizedBox(
            height: 50, child: ListView.builder(
                scrollDirection: Axis.horizontal,
                reverse: true,
                itemCount: years.length,
                itemBuilder: (context, index){
                  return Container(
                    margin: EdgeInsets.only(left:8, top: 10),
                    height: 100, width: 80,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Center(
                      child: Text(years[index], style: textRegular()),
                    ),
                  );
                }),
          ),

          SizedBox( height: 10),

          SizedBox(
            height: MediaQuery.of(context).size.height-250,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: years.length,
                itemBuilder: (context, index){
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Card(
                      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: ListTile(
                        onTap: ()=> debugPrint('Hi Everyone'),
                        title: Text(years[index], style: textSmall()),
                        leading: Icon(Icons.adjust, color: Colors.blue, size: 30,),
                      )
                    ),
                  );
                }),
          )


        ],
      )
    );
  }
}
