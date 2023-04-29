import 'package:flutter/material.dart';

import 'language_screen.dart';

class Drawes extends StatefulWidget {
  const Drawes({Key? key}) : super(key: key);

  @override
  State<Drawes> createState() => _DrawesState();
}

class _DrawesState extends State<Drawes> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
              child: Center(
            child: Text(
              "LoRa Sniffer",
              style: TextStyle(
                  fontSize: 25, color: Colors.red, fontWeight: FontWeight.w900),
            ),
          )),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LanguageScreen()));
            },
            leading: const Icon(
              Icons.translate,
              color: Colors.black,
            ),
            title: const Text(
              "Change Langauge",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.rate_review,
              color: Colors.black,
            ),
            title: Text(
              "Change Frequency",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.share,
              color: Colors.black,
            ),
            title: Text(
              "Share",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.all_inbox_outlined,
              color: Colors.black,
            ),
            title: Text(
              "About Us",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "V 1.0.0",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
