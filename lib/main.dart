import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: 'WhatsApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScrollController listScrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
            indicatorColor: Colors.green,
            indicatorWeight: 3,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt, color: Colors.white)),
              Text(
                'Chats',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                'Status',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                'Calls',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ),

        // Floating action button implemented with the
        // auto scroll function to the bottom of list
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: "Contacts",
          child: Icon(Icons.chat),
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
                trailing: const Icon(Icons.favorite, color: Colors.white),
                title: Text(
                  "Friend ${index + 1}",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Heyy",
                  style: TextStyle(color: Colors.white),
                ),
              );
            }),
      ),
    );
  }
}
