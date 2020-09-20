import 'package:flutter/material.dart';
import 'package:the_police/widget/profile_heading.dart';
import 'package:the_police/widget/profile_list.dart';

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        //background
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: 350.0),
          color: Colors.white,
          child: ProfileList(
            icon1: Icons.supervisor_account,
            text1: 'Renakta',
            icon2: Icons.payment,
            text2: '0076564322312',
            icon3: Icons.local_phone,
            text3: '98439532837428',
            icon4: Icons.reply,
            text4: 'Sign Out',
          ),
        ),
        //heading
        Container(
          height: 200.0,
          width: MediaQuery.of(context).size.width,
          color: Colors.brown,
        ),
        //profileheading
        ProfileHeading(
          image: AssetImage('assets/usdin.jpg'),
          nama: 'Roni Kewok',
          email: 'rudiws990@gmail.com',
        ),
      ],
    ));
  }
}
