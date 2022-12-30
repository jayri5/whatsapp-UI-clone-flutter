import 'package:flutter/material.dart';
import 'calls.dart';
import 'status.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData.light().copyWith(
          scrollbarTheme: ScrollbarThemeData().copyWith(
        thumbColor: MaterialStateProperty.all(Colors.white),
      )),
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
                onPressed: () {},
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
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => calls()));
                },
              )),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff026b06),
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


//flutlab default code from here
/*
import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Center(
        child: Text('Hey, This is Jayri!'),
      ),
    );
  }
}
*/
