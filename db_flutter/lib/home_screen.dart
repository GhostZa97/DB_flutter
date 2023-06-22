import 'package:db_flutter/form_screen.dart';
import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("หน้าแรก"),
          actions: [
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => formscreen(),
                      ));
                })
          ],
        ),
        body: Container(
          child: ListView.builder(
            itemCount: 5,
            // itemCount: database.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                margin: EdgeInsets.all(5),
                shadowColor: Colors.grey,
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      title: Text("หัวข้อ"),
                      subtitle: Text("หัวข้อรอง"),
                      // title: Text(database[index]['title']), 
                      // subtitle: Text(database[index]['subtitle']),
                    )
                  ],
                ),
              );
            },
          ),
        ));
  }
}
