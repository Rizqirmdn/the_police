import 'package:flutter/material.dart';

class ProfileHeading extends StatelessWidget {
  final ImageProvider<dynamic> image;
  final String nama;
  final String email;

  ProfileHeading({this.image, this.nama, this.email});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50.0, right: 40.0, left: 40.0),
      height: 200.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 3,
            )
          ]),
      child: Column(
        children: [
          //potoprofile
          Container(
            margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
            height: 90.0,
            width: 90.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.brown,
              border: Border.all(width: 1, color: Colors.white),
              image: DecorationImage(image: image, fit: BoxFit.cover),
            ),
          ),
          //nama
          Text(
            nama,
          ),
          SizedBox(height: 20.0),
          //email
          Text(
            email,
          )
        ],
      ),
    );
  }
}
