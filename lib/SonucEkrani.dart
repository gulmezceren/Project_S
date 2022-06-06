import 'package:flutter/material.dart';

class SonucEkrani extends StatefulWidget {
  bool sonuc;
  SonucEkrani({required this.sonuc});
  @override
  _SonucEkraniState createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SONUÇ EKRANI"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            widget.sonuc ? Image.asset("resimler/mutlu.png"):Image.asset("resimler/uzgun.png"),
            Text(widget.sonuc ? "Kazandınız":"kaybettiniz",style: TextStyle(color:Colors.black54,fontSize: 36),),

            SizedBox(width:250,height:30,

              child: ElevatedButton(
                child:Text("TEKRAR DENE",style:TextStyle(color:Colors.white,),),
                style:ElevatedButton.styleFrom(primary: Colors.blue,),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
