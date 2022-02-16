import 'package:flutter/material.dart';
import 'package:vehicle_master/Comman%20components/colors.dart';

class ShowVehicleInfo extends StatefulWidget {
  ShowVehicleInfo({Key? key}) : super(key: key);

  @override
  State<ShowVehicleInfo> createState() => _ShowVehicleInfoState();
}

class _ShowVehicleInfoState extends State<ShowVehicleInfo> {
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
        title: Text('RC Details'),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
      ),
      body: Container(
          child: Column(
        children: [],
      )),
    );
  }
}
