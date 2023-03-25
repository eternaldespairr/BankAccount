import 'package:flutter/material.dart';

class Metin extends StatefulWidget {

  Color color;
  String Name;
  String amount;
  Color Textcolor;
  Metin(
      {Key? key,required this.color,required this.Name, required this.amount,required this.Textcolor})
      : super(key: key);

  @override
  State<Metin> createState() => _MetinState();
}

class _MetinState extends State<Metin> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Para Çekildi");
      } ,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(22)),
          color: widget.color
        ),
        width: 280,
        height: 280,
        child: Padding(
          padding: const EdgeInsets.only(right: 18.0,top: 34),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children:<Widget>[
              Text(widget.Name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500)
                ,),
              SizedBox(height: 40,),
              Text("${widget.amount}\n          USD",style: TextStyle(color:widget.Textcolor,fontSize: 29),),
              Padding(
                padding: const EdgeInsets.only(top: 40,left: 40),
                child: Row(
                  children: [
                    Icon(Icons.paypal,size: 35,color: Colors.grey.shade600,),
                    SizedBox(width: 70,),
                    Text("***3508",style: TextStyle(color: Colors.black,fontSize: 32),)

                  ],
                ),
              ),


            ],
          ),
        ),

      ),
    );
  }
}
