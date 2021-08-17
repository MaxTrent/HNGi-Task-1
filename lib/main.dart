import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Display Input',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: DetailsInput(),
    );
  }
}

class DetailsInput extends StatefulWidget {
  const DetailsInput({Key? key}) : super(key: key);

  @override
  _DetailsInputState createState() => _DetailsInputState();
}

class _DetailsInputState extends State<DetailsInput> {
  final acceptor = TextEditingController();
  @override
  void dispose() {
    acceptor.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Display Input'
        ),
      ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: acceptor,
          ),
        ),
      floatingActionButton: FloatingActionButton(
      onPressed: () {
        showDialog(context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(acceptor.text),
            );
          },
        );
      },
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}

