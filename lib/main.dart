import 'package:flutter/material.dart';

import 'Kisiler.dart';
import 'metin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assets',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black45,Colors.indigo]
            )
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(22),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(70),
                      ),
                      child:CircleAvatar(
                        backgroundImage: AssetImage("lib/Resimler/pexels-ba-tik-3754208.jpg"),
                      )

                    ),
                    SizedBox(width: 20,),
                    Text("Hello Emre",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w400,color: Colors.white),),
                    SizedBox(width: 110,),
                    IconButton(
                      icon: Icon(Icons.menu,color: Colors.grey,size: 30,),
                      onPressed: () {

                      } ,
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 280),
                child: Text("Total Balance",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey),),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 12),
                    child: Text("\$ 548,246,558",style: TextStyle(fontSize: 34),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: GestureDetector(
                      onTap: () {

                      } ,
                      child: Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(22))
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.monetization_on_sharp,color: Colors.black,),
                            SizedBox(width: 5,),
                            Text("Withdraw",style: TextStyle(fontSize: 16,color: Colors.black),),

                          ],
                        ),
                      ),
                    ),
                  )

                ],
              ),
              SizedBox(height: 30,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Metin(
                      color:Colors.black12 ,
                      Name: "Emre Can Gözleyici",
                      amount: "643,212,55",
                      Textcolor: Colors.black,
                    ),
                    SizedBox(width: 30,),
                    Metin(
                      color:Colors.deepOrange,
                      Name: "Umut Aydemir",
                      amount:"341,579,24",
                      Textcolor:Colors.white ,
                    ),
                    SizedBox(width: 30,),
                    Metin(
                      color: Colors.purple,
                      Name: "Uğur Pirpir",
                      amount:"212,444,00" ,
                      Textcolor:Colors.white,
                    ),
                    SizedBox(width: 30,),
                    Metin(
                      color:Colors.indigoAccent ,
                      Name:"Furkan Üzen" ,
                      amount:"567,33,67" ,
                      Textcolor: Colors.white60,
                    ),
                    SizedBox(width: 20,),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 220,top: 40),
                child: Text("Send Money",style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.w600),),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Kisiler(PathName: "lib/Resimler/pexels-andrea-piacquadio-774909.jpg",),
                    Kisiler(PathName: "lib/Resimler/pexels-justin-shaifer-1222271.jpg",),
                    Kisiler(PathName: "lib/Resimler/pexels-pixabay-220453.jpg",),
                    Kisiler(PathName:"lib/Resimler/pexels-ba-tik-3754208.jpg",),



                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Transaction",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),),
                    Text("More",style: TextStyle(fontSize: 16,color: Colors.white),)
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(32),
                    topLeft: Radius.circular(32),
                  ),
                  gradient: LinearGradient(
                    colors:  [Colors.black,Colors.blueAccent],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  )
                ),
                height: 132,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25,top: 20),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.all(Radius.circular(55)),
                            ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.apple,size: 30,),
                              )

                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 32),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Apple Shope",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                                SizedBox(height: 5,),
                                Text("Dec 8.2023",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          SizedBox(width: 70,),
                          Text("-\$1286.00",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)

                        ],
                      ),
                    )
                  ],
                ),

              ),






            ],
          ),
        ),
      )

    );
  }
}
