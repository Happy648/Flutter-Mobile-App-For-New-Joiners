// ignore_for_file: deprecated_member_use, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
            padding: EdgeInsets.only(top: 20, bottom: 10, left: 5, right: 5),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text("Welcome on board ! ",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                QuickLinks(),
                SizedBox(
                  height: 15,
                ),
                LinkedInDetails(),
                SizedBox(
                  height: 15,
                ),
                hrDetails(),
              ],
            )),
      );
  Widget LinkedInDetails() => Card(
          child: Column(
        children: [
          Text(
            "LinkedIn for New Joiners",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 300,
            child: Divider(
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Kindly follow the below Dos and Don'ts while posting:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
              SizedBox(
                height: 5,
              ),
              Text(
                  "• Adipisicing tempor sint consectetur elit eu do fugiat cillum sint sunt nisi. Elit sit non elit nulla. Reprehenderit veniam ex id tempor voluptate."),
              SizedBox(
                height: 5,
              ),
              Text(
                  "• Do quis aliqua ex enim cupidatat aliqua sint. Ut et officia nulla fugiat pariatur pariatur. Velit irure ullamco eiusmod fugiat."),
              Text("Example:"),
              Text(
                  "Magna amet excepteur eu nulla aliqua do. Sint proident nostrud consectetur nulla. Occaecat sit id nisi velit. Fugiat irure sunt qui id sunt ."),
              SizedBox(
                height: 5,
              ),
              Text(
                  "• Nisi sit culpa cupidatat ad cillum eiusmod id exercitation quis. Non cillum ullamco commodo ."),
              SizedBox(
                height: 5,
              ),
              Text(
                  "• Laboris fugiat ea minim ipsum duis esse irure Lorem. Non veniam non velit eu. Ut cillum est aliqua dolore nostrud duis irure cillum qui velit labore."),
              SizedBox(
                height: 5,
              ),
              Text(
                  "Occaecat id cupidatat ut ea sunt ex et dolore duis et laborum. Consequat esse minim magna fugiat .",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
              SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Click here ",
                      style: TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          String url =
                              "https://1000logos.net/wp-content/uploads/2021/10/ABC-logo-768x432.png";
                          await GallerySaver.saveImage(url, albumName: 'ABC');
                        }),
                  TextSpan(
                      style: TextStyle(color: Colors.black87),
                      text: "to download ABC GIF Logo"),
                ]),
              ),
              SizedBox(
                height: 5,
              ),
            ]),
          )
        ],
      ));
  Widget QuickLinks() => Card(
        child: Column(children: [
          Text(
            "Quick Links",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 200,
            child: Divider(
              color: Colors.black,
            ),
          ),
          Links(
              "ABC Intranet",
              "https://developer.apple.com/documentation/uikit/uiapplication/1622952-canopenurl",
              "Workday",
              "https://developer.apple.com/documentation/uikit/uiapplication/1622952-canopenurl"),
          Links(
              "HGS",
              "https://developer.apple.com/documentation/uikit/uiapplication/1622952-canopenurl",
              "HR Policies",
              "https://developer.apple.com/documentation/uikit/uiapplication/1622952-canopenurl"),
          SizedBox(
            height: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ABC India Conflict of Interest Certification:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
              Text(
                  "• Minim do laboris culpa sit dolore quis dolore culpa sit ullamco eiusmod  ad."),
              SizedBox(
                height: 5,
              ),
              Text(
                  "Fugiat do fugiat laborum culpa cupidatat et officia ullamco consequat laboris duis in.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
              SizedBox(
                height: 5,
              ),
              Text("Velit sunt reprehenderit minim officia magna excepteur.: ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
              Text(
                  "• Occaecat et amet dolor sit elit proident laboris tempor laborum. Eiusmod elit. Esse duis quis ."),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ]),
      );
  Widget Links(String name1, String url1, String name2, String url2) => Row(
        children: [
          Expanded(
            child: ElevatedButton(
              child: Text(name1),
              onPressed: () async {
                openBrowserURL(url: url1, inApp: true);
              },
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: ElevatedButton(
              child: Text(name2),
              onPressed: () async {
                openBrowserURL(url: url2, inApp: true);
              },
            ),
          ),
        ],
      );

  Future openBrowserURL({
    required String url,
    bool inApp = false,
  }) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: inApp,
        forceWebView: inApp,
        enableJavaScript: true,
      );
    }
  }

  Widget hrDetails() => Card(
        child: Column(children: [
          Text(
            'Contact HR',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 200,
            child: Divider(
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          _row(Icons.phone, '+91 (22) 6221 1990'),
          const SizedBox(
            height: 5,
          ),
          _row(Icons.email, 'HRservices@abc.org'),
        ]),
      );
  Widget _row(IconData icon, String string) => Row(
        children: [
          Icon(
            icon,
            color: Colors.black,
            size: 15,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            string,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
        ],
      );
}
