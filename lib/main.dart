import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'PROFILE',
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text(
          'HOME',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("UDAYA_BOSS"),
              accountEmail: Text("udaya1@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black,
                child: Text(
                  "U",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("HOME"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.portrait),
              title: Text("PROFILE"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.code,
              ),
              title: Text('CODES'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Codes()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("SETTINGS"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Settings()));
              },
            )
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "PROFILE",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Center(
            child: Image.network(
              "https://scontent.fbwa3-1.fna.fbcdn.net/v/t1.6435-9/88064000_514145192847414_145265633720795136_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=z9nEFWoqUwAAX-An9EI&_nc_ht=scontent.fbwa3-1.fna&oh=8ed3688b37e740b6ff3fb21953adccda&oe=612B3619",
              width: 244,
              height: 244,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "[NAME:UDAYA SETI SILAL]",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "[ADDRESS:HETAUDA-11,BAGMATI]",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "[E-MAIL:udayasetisilalutube@gmail.com]",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
          ),
          SizedBox(
            height: 270,
          ),
          Text(
            "Copyright (c) 2021 ",
            style: TextStyle(fontWeight: FontWeight.w800),
          )
        ],
      ),
    );
  }
}

class Codes extends StatelessWidget {
  const Codes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("CODES"),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          child: (Text("HTML CODE")),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HTML()));
          },
        ),
      ),
    );
  }
}

class HTML extends StatelessWidget {
  const HTML({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "<HTML STRRUCTURE>",
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            "<HTML>",
            style: TextStyle(fontSize: 30),
          ),
          Text(
            "<HEAD",
            style: TextStyle(fontSize: 30),
          ),
          Text(
            "<TITLE> DOCUMENT </TITLE>",
            style: TextStyle(fontSize: 30),
          ),
          Text(
            "<BODY>",
            style: TextStyle(fontSize: 30),
          ),
          Text(
            "<p> HELLO USERS!! </p>",
            style: TextStyle(fontSize: 30),
          ),
          Text(
            "</BODY>",
            style: TextStyle(fontSize: 30),
          ),
          Text(
            "</HTML>",
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("SETTINGS"),
        centerTitle: true,
      ),
    );
  }
}
