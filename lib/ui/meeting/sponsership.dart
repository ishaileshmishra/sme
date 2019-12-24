import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sme/widgets/color_widgets.dart';
import 'package:sme/widgets/text_widgets.dart';

class SponsershipScreen extends StatefulWidget {
  @override
  _SponsershipScreenState createState() => _SponsershipScreenState();
}

class _SponsershipScreenState extends State<SponsershipScreen> {


  final boxDecorationStyle = BoxDecoration(
    color: Colors.grey[300],
    borderRadius: BorderRadius.circular(30.0),
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 6.0,
        offset: Offset(0, 2),
      ),
    ],
  );


  final hintTextStyle = TextStyle(
    color: Colors.black,
  );


  Widget _buildEmailTF() {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: boxDecorationStyle,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(14.0),
              hintText: 'Enter your Email',
              hintStyle: hintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SPONSORSHIP',
          style: textHeading(),
        ),
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Theme.of(context).canvasColor,
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 20.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      ListTile(
                        title: Text('Sponsorship opportunity for branding & marketing at forum meetings', style: textRegular()),
                        //leading: Icon(Icons.adjust, color: Colors.blue, size: 30,),
                      ),

                      SizedBox(height: 15.0),

                      _buildEmailTF(),

                      SizedBox(height: 15.0),

                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: boxDecorationStyle,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(14.0),
                            hintText: 'Name Of Company',
                            hintStyle: hintTextStyle,
                          ),
                        ),
                      ),


                      SizedBox(height: 15.0),

                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: boxDecorationStyle,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(14.0),
                            hintText: 'Name of the person',
                            hintStyle: hintTextStyle,
                          ),
                        ),
                      ),


                      SizedBox(height: 15.0),

                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: boxDecorationStyle,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(14.0),
                            hintText: 'Designation',
                            hintStyle: hintTextStyle,
                          ),
                        ),
                      ),


                      SizedBox(height: 15.0),

                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: boxDecorationStyle,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(14.0),
                            hintText: 'Enter your Email',
                            hintStyle: hintTextStyle,
                          ),
                        ),
                      ),


                      SizedBox(height: 15.0),

                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: boxDecorationStyle,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(14.0),
                            hintText: 'Mobile Number',
                            hintStyle: hintTextStyle,
                          ),
                        ),
                      ),


                      SizedBox(height: 15.0),

                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: boxDecorationStyle,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(14.0),
                            hintText: 'Landline Number',
                            hintStyle: hintTextStyle,
                          ),
                        ),
                      ),


                      SizedBox(height: 15.0),

                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: boxDecorationStyle,
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(14.0),
                            hintText: 'Address',
                            hintStyle: hintTextStyle,
                          ),
                        ),
                      ),


                      SizedBox(height: 15.0),

                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: boxDecorationStyle,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(14.0),
                            hintText: 'City',
                            hintStyle: hintTextStyle,
                          ),
                        ),
                      ),

                      SizedBox(height: 15.0),

                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: boxDecorationStyle,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(14.0),
                            hintText: 'District',
                            hintStyle: hintTextStyle,
                          ),
                        ),
                      ),



                      SizedBox(height: 15.0),

                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: boxDecorationStyle,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(14.0),
                            hintText: 'State',
                            hintStyle: hintTextStyle,
                          ),
                        ),
                      ),


                      SizedBox(height: 15.0),

                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: boxDecorationStyle,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(14.0),
                            hintText: 'Country',
                            hintStyle: hintTextStyle,
                          ),
                        ),
                      ),

                      SizedBox(height: 15.0),

                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: boxDecorationStyle,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(14.0),
                            hintText: 'Forum Meeting - City',
                            hintStyle: hintTextStyle,
                          ),
                        ),
                      ),


                      SizedBox(height: 15.0),

                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: boxDecorationStyle,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(14.0),
                            hintText: 'Forum Meeting - Date',
                            hintStyle: hintTextStyle,
                          ),
                        ),
                      ),


                      SizedBox(height: 15.0),

                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: boxDecorationStyle,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(14.0),
                            hintText: 'Mode Of Sponsership',
                            hintStyle: hintTextStyle,
                          ),
                        ),
                      ),


                      SizedBox(height: 25.0),


                      GestureDetector(
                        onTap: ()=>print('Tapped'),
                        child: Container(
                          padding: EdgeInsets.all(14.0),
                          height: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.all(Radius.circular(40))
                          ),

                          child: Text('Submit', style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold)),
                        ),
                      )
                      
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
