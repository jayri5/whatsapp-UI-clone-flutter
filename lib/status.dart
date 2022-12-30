import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'calls.dart';

class status extends StatelessWidget {
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xbd000000),
        appBar: AppBar(
          backgroundColor: Color(0x95000000),
          automaticallyImplyLeading: false,
          title: Text('WhatsApp',
              style: TextStyle(fontSize: 25, color: Colors.white)),
          leading: GestureDetector(
            onTap: () {/* Write listener code here */},
            child: Icon(Icons.whatsapp,
                size: 20, color: Colors.white // add custom icons also
                ),
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.search, size: 22.0, color: Colors.white),
                )),
            SizedBox(width: 20),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.more_vert, size: 25, color: Colors.white),
                )),
          ],
          bottom: TabBar(
            indicatorColor: Colors.black,
            indicatorWeight: 3,
            tabs: [
              Tab(
                  child: TextButton(
                child: Text(
                  "Chats",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => MyApp()));
                },
              )),
              Tab(
                  child: TextButton(
                child: Text(
                  "Status",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () {},
              )),
              //Text(
              //'Status',
              //style: TextStyle(fontSize: 20, color: Colors.white),
              //),
              Tab(
                  child: TextButton(
                child: Text(
                  "Calls",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => calls()));
                },
              )),
            ],
          ),
        ),
        body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child:
                    Icon(Icons.add_a_photo, size: 28, color: Color(0xffffffff)),
              ),
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Column(children: [
                  Text(
                    'My Status',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    'Tap to add status update',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  )
                ]),
              ),
            ]),
      ),
    );
  }
}
