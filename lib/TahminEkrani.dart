import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sayi_tahmin_uygulamasiiiii/SonucEkrani.dart';

class TahminEkrani extends StatefulWidget {
  const TahminEkrani({Key? key}) : super(key: key);

  @override
  State<TahminEkrani> createState() => _TahminEkraniState();
}

class _TahminEkraniState extends State<TahminEkrani> {
  var tfTahmin=TextEditingController();
  int rasgeleSayi=0;
  int kalanHak=5;
  String yonlendirme="";
  @override
  void initState(){
    super.initState();
    rasgeleSayi= Random().nextInt(101);
    print("rastegele sayı:$rasgeleSayi");
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TAHMİN EKRANI"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            Text("Kalan Hak:$kalanHak",style: TextStyle(color:Colors.pink,fontSize: 30),),
            Text("Yardım:$yonlendirme",style: TextStyle(color:Colors.black54,fontSize: 24),),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: tfTahmin,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: "Tahmin",
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height:50 ,
              child: ElevatedButton(
                child:Text("TAHMİN ET",style: TextStyle(color:Colors.white,),),
                style:ElevatedButton.styleFrom(primary:Colors.pink,),
                onPressed: (){

                  setState(() {
                    kalanHak=kalanHak-1;
                  });

                  int tahmin=int.parse(tfTahmin.text);

                  if(tahmin==rasgeleSayi){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>SonucEkrani(sonuc:true)));
                    return;
                  }

                  //Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>TahminEkrani()));
                if(tahmin<rasgeleSayi){
                  setState(() {
                    yonlendirme="tahmini arttır";
                  });
                }
                  if(tahmin>rasgeleSayi){
                    setState(() {
                      yonlendirme="tahmini azalt";
                    });
                  }
                  if(kalanHak==0){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>SonucEkrani(sonuc:false)));
                  }
                  tfTahmin.text="";
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
