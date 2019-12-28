import 'package:flutter/material.dart';
import 'package:sme/widgets/color_widgets.dart';
import 'package:sme/widgets/text_widgets.dart';

class ChapterFormPage extends StatefulWidget {
  @override
  _ChapterFormPageState createState() => _ChapterFormPageState();
}

class _ChapterFormPageState extends State<ChapterFormPage> {


  List<String> enrollForCities = ['Mumbai', 'Pune', 'Ahemdabad', 'Nasik', 'Chennai', 'Banglore', 'Badodara', 'Rajkot', 'Haidrabad', 'Surat'];


  final formTextStyle = TextStyle(
    color: Colors.white,
  );


  final formDecorationStyle = BoxDecoration(
    color: Colors.grey,
    borderRadius: BorderRadius.circular(30.0),
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 6.0,
        offset: Offset(0, 2),
      ),
    ],
  );

  Widget _buildFullNameTF() {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Full Name', style: textSmall()),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: formDecorationStyle,
          //height: 50.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'Enter Full Name',
              hintStyle: formTextStyle,
            ),
          ),
        ),
      ],
    );
  }


  Widget _buildDesignationTF() {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Designation', style: textSmall()),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: formDecorationStyle,
          //height: 50.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'Enter Designation',
              hintStyle: formTextStyle,
            ),
          ),
        ),
      ],
    );
  }


  Widget _buildCompanyNameTF() {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Company Name', style: textSmall()),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: formDecorationStyle,
          //height: 50.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'Enter Company Name',
              hintStyle: formTextStyle,
            ),
          ),
        ),
      ],
    );
  }


  Widget _buildBusinessActivityTF() {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Business Activity', style: textSmall()),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: formDecorationStyle,
          //height: 50.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'Enter Business Activity',
              hintStyle: formTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildEmailTF() {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Email', style: textSmall()),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: formDecorationStyle,
          //height: 50.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'Enter Email',
              hintStyle: formTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMobileTF() {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Mobile Number', style: textSmall()),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: formDecorationStyle,
          //height: 50.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'Enter Mobile Number',
              hintStyle: formTextStyle,
            ),
          ),
        ),
      ],
    );
  }


  Widget _buildCityTF() {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('City', style: textSmall()),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: formDecorationStyle,
          //height: 50.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'Enter City',
              hintStyle: formTextStyle,
            ),
          ),
        ),
      ],
    );
  }


  Widget _buildBtnSubmit() {

    return Container(
          alignment: Alignment.center,
          decoration: formDecorationStyle,
          //height: 50.0,
          child: RaisedButton(
            onPressed: ()=> print('Tapped Button'),
          ),
        );
  }





  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text('Membership form'),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: <Widget>[

              SizedBox(
                height: 40,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: enrollForCities.length,
                    itemBuilder: (context, index){
                  return Container(
                    margin: EdgeInsets.all(4),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.orange
                    ),
                    child: Text(enrollForCities[index], style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.white, letterSpacing: 1.5
                    )),
                  );
                }),
              ),

              const SizedBox(height: 40),
              _buildFullNameTF(),
              const SizedBox(height: 10),
              _buildDesignationTF(),
              const SizedBox(height: 10),
              _buildCompanyNameTF(),
              const SizedBox(height: 10),
              _buildBusinessActivityTF(),
              const SizedBox(height: 10),
              _buildEmailTF(),
              const SizedBox(height: 10),
              _buildMobileTF(),
              const SizedBox(height: 10),
              _buildCityTF(),
              const SizedBox(height: 30),


              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {},
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  child: Text('Submit', style: TextStyle(fontSize: 18, color: Colors.black)),

                ),
              ),



            ],
          ),
        ),
      ),
    );

  }
}
