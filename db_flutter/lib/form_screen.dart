import 'package:flutter/material.dart';

class formscreen extends StatefulWidget {
  const formscreen({super.key});

  @override
  State<formscreen> createState() => _formscreenState();
}

class _formscreenState extends State<formscreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("หน้าฟอร์ม"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Form(
          key: _formKey,
          child: Column(children: [
            TextFormField(
              decoration:
                  InputDecoration(labelText: 'ชื่อ', hintText: 'กรุณากรอกชื่อ'),
            ),
            TextFormField(
              decoration:
                  InputDecoration(labelText: 'เลข', hintText: 'กรุณากรอกเลข'),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ElevatedButton(
                  child: Text('บันทึก'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
