import 'package:flutter/material.dart';
import 'package:sayi_tahmin_uygulamasiiiii/TahminEkrani.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ANASAYFA(),
    );
  }
}

class ANASAYFA extends StatefulWidget {

  @override
  State<ANASAYFA> createState() => _ANASAYFAState();
}

class _ANASAYFAState extends State<ANASAYFA> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ANASAYFA"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            Text("Tahmin Oyunu",style: TextStyle(color:Colors.black54,fontSize: 36),),
            Image.asset("resimler/zar_resmi.jpg"),
            SizedBox(
              width: 200,
              height:50 ,
              child: ElevatedButton(
                child:Text("OYUN BAŞLA",style: TextStyle(color:Colors.white),),
               style: ElevatedButton.styleFrom(primary: Colors.blue,),
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>TahminEkrani()));
                },
              ),
            ),

      ],
    ),
      ),
    );
  }
}
