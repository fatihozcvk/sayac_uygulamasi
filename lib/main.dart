import 'package:flutter/material.dart';

void main(){
  runApp(SayacApp());
}

class SayacApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Sayfa1(),
    );
  }

}

class Sayfa1 extends StatefulWidget {
  const Sayfa1({super.key});

  @override
  State<Sayfa1> createState() => _Sayfa1State();
}

class _Sayfa1State extends State<Sayfa1> {

  int sayac = 0;

  void azalt(){
    setState(() {
      sayac--;
    });
  }

  void arttir(){
    setState(() {
      sayac++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text(
            "SAYAÇ UYGULAMASI",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
        )
        ),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                "$sayac",
                style: TextStyle(
                  fontSize: 60
                ),
            ),
            ElevatedButton(
                onPressed: () {
                  arttir();
                },
                child: Text("SAYACI ARTTIR")
            ),
            SizedBox(
              height: 35,
            ),
            ElevatedButton(
                onPressed: () {
                  azalt();
                },
                child: Text("SAYACI AZALT")
            ),

          ],
        ),
      ),


    );
  }
}
