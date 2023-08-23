import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50,),

              // iconAndroid
              androidIcon(),
              SizedBox(height: 10,),


              // TextField
              textField(),

              // Information
              Infomation(),

            ],
          ),
        ),
      ),
    );
  }
}

Infomation() {
  return  Container(
      margin: EdgeInsets.all(110),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          iconAndContent(icon: Icons.phone_rounded,content: '353535353535'),
          const SizedBox(height: 5),
          iconAndContent(icon: Icons.share_outlined,content: '@AndroidDev'),
          const SizedBox(height: 5),
          iconAndContent(icon: Icons.email_outlined,content: 'thaochi@gmail.com')
        ],
      )
  );
}

iconAndContent({required IconData icon, required String content}) {
  return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children:[
        Icon(icon, color: Colors.green[700]),
        const SizedBox(width: 40),
        Text(content,
            style:  TextStyle(color: Colors.green[700]))
      ]
  );
}

textField() {
  return Container(
    child: Column(
      children: [
        Text('Tran Thao Chi',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(height: 5),
        Text('A Developer Extraodinairy'),
      ],
    ),
  );
}

androidIcon() {
  return Container(
    margin: EdgeInsets.only(top: 200),
    padding: EdgeInsets.all(30),
    color: Colors.black38,
    child: Column(
      children: [
        Icon(Icons.android),
        Text("android"),
      ],
    ),
  );
}
