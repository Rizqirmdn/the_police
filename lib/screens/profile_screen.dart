import 'package:flutter/material.dart';
import 'package:polisi_crime_mapping/screens/login_screen.dart';
import 'package:polisi_crime_mapping/widgets/pofile_heading.dart';
import 'package:polisi_crime_mapping/widgets/profile_list.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    Key key,
  }) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
        actions: [
          Container(
            height: 30,
            padding: EdgeInsets.all(12),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.redAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
              child: const Text('Logout', style: TextStyle(fontSize: 20)),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.brown,
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          ProfileHeading(
            email: 'ahmadpolisi@gmail.com',
            nama: 'ahmad police',
            image: AssetImage('assets/usdin.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: ProfileList(
              icon1: Icons.exit_to_app,
              text1: 'DIVISI',
              icon2: Icons.ac_unit,
              text2: 'No Telp',
              icon3: Icons.access_alarm,
              text3: 'NO KTA',
            ),
          ),
        ],
      ),
    );
  }
}
