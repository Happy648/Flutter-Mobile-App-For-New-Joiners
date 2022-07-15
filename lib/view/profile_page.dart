// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 30, bottom: 10, left: 5, right: 5),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Profile(),
              Container(
                padding: EdgeInsets.only(
                  top: 40,
                  left: 10,
                ),
                alignment: Alignment.topLeft,
                child: Text("Contact",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
              ),
              SizedBox(
                width: double.infinity,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Contacts(Icons.email, 'abc@gmail.com'),
              Contacts(Icons.phone, '+91 70576 11379'),
              Contacts(Icons.location_on, 'Pune, India'),
              Container(
                padding: EdgeInsets.only(
                  top: 40,
                  left: 10,
                ),
                alignment: Alignment.topLeft,
                child: Text("Reports to",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
              ),
              SizedBox(
                width: double.infinity,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ReportsTo()
            ],
          ),
        ),
      );

  Widget Profile() => Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: CircleAvatar(
              radius: 47,
              backgroundColor: Colors.blue.shade900,
              child: CircleAvatar(
                radius: 45,
                backgroundColor: Colors.blue.shade100,
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/person.png'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "ABC",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 5,
              ),
              Text("Intern", style: TextStyle(fontSize: 15)),
              Text("Software Developer", style: TextStyle(fontSize: 15)),
            ]),
          ),
        ],
      );
  Widget Contacts(IconData icon, String name) => Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 10),
        child: Row(
          children: [
            Icon(icon, size: 20),
            SizedBox(
              width: 10,
            ),
            Text(name, style: TextStyle(fontSize: 20))
          ],
        ),
      );
  Widget ReportsTo() => Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: CircleAvatar(
              radius: 37,
              backgroundColor: Colors.blue.shade900,
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Colors.blue.shade100,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/person.png'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "XYZ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              Text("Software Developer", style: TextStyle(fontSize: 15)),
            ]),
          ),
        ],
      );
}
