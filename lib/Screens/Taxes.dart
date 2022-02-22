import 'package:flutter/material.dart';
import 'package:vehicle_master/Comman%20components/colors.dart';

class Taxes extends StatefulWidget {
  Taxes({Key? key}) : super(key: key);

  @override
  State<Taxes> createState() => _TaxesState();
}

class _TaxesState extends State<Taxes> {
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: MunshiColor().munshiBlue,
        centerTitle: true,
        title: Text('Taxes'),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
      ),
      body: Container(
          height: h * 0.9,
          width: w,
          color: MunshiColor().munshiCreme,
          child: Column(
            children: [],
          )),
    );
  }
}
