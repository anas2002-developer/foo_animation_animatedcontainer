import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var H = 100.0;
  var W = 200.0;

  //for toggle
  bool flag = true;

  Decoration decor =  BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.deepPurpleAccent,
  );



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              height: H,
              width: W,
              decoration: decor,
              duration: Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
            ),

            ElevatedButton(onPressed: (){

              if (flag){
                H = 200.0;
                W = 100.0;
                flag=false;
                decor = BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lightGreenAccent
                );
              }
              else{
                H = 100.0;
                W = 200.0;
                flag=true;
                decor = BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.deepPurpleAccent
                );
              }
              setState(() {});

            }, child: Text("animate")),
          ],
        ),
      )
    );
  }
}
