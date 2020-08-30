import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //To remove debug banner
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Dummy List Object
  var dummyList = ["Titanic", "Harry Potter", "James Bound"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appy Words"),
        //to center appbar title
        centerTitle: true,
      ),

      //body
      body: ListView.builder(
          //How many list item(boxes) to display: count
          itemCount: dummyList.length,
          //List item (layout) design
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: double.infinity,
              padding: EdgeInsets.all(8),
              child: Text('${dummyList[index]}'),
            );
          }),

      //Floating Action Button
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              dummyList.add("Movie...");
            });
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          )),
    );
  }
}
