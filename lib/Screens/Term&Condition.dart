import 'package:flutter/material.dart';
import 'package:vehicle_master/Comman%20components/colors.dart';

class TermandConditions extends StatefulWidget {
  TermandConditions({Key? key}) : super(key: key);

  @override
  State<TermandConditions> createState() => _TermandConditionsState();
}

class _TermandConditionsState extends State<TermandConditions> {
  @override
  Widget build(BuildContext context) {
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
        title: Text('Terms & Conditions'),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
      ),
    );
  }
}
