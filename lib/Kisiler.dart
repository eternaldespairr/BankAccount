import 'package:flutter/material.dart';

class Kisiler extends StatefulWidget {

  String PathName;



   Kisiler({Key? key,required this.PathName}) : super(key: key);

  @override
  State<Kisiler> createState() => _KisilerState();
}

class _KisilerState extends State<Kisiler> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: CircleAvatar(
        backgroundImage:AssetImage(widget.PathName),
        radius: 27,
      ),
    );
  }
}
