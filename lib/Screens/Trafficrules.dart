import 'package:flutter/material.dart';
import 'package:vehicle_master/Comman%20components/colors.dart';

class TrafficRules extends StatefulWidget {
  TrafficRules({Key? key}) : super(key: key);

  @override
  State<TrafficRules> createState() => _TrafficRulesState();
}

class _TrafficRulesState extends State<TrafficRules> {
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
        title: Text('Taxes'),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
      ),
    );
  }
}
