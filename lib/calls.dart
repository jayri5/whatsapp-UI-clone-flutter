import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'status.dart';

class calls extends StatelessWidget {
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
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => status()));
                },
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
                onPressed: () {},
              )),
            ],
          ),
        ),
        // ListView with 100 list items
        body: ListView.separated(
            itemCount: 15,
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.black,
                thickness: 1.0,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: const Icon(Icons.sentiment_satisfied_alt,
                    color: Colors.white),
                trailing: const Icon(Icons.phone, color: Colors.white),
                title: Text(
                  "Call ${index + 1}",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Today, 11:15AM",
                  style: TextStyle(color: Colors.white),
                ),
              );
            }),
      ),
    );
  }
}
