import 'package:flutter/material.dart';
import 'package:vehicle_master/Comman%20components/colors.dart';
import 'package:vehicle_master/Screens/LightMotorVehicleInsurance.dart';

class LightNewInsurance extends StatefulWidget {
  LightNewInsurance({Key? key}) : super(key: key);

  @override
  State<LightNewInsurance> createState() => _LightNewInsuranceState();
}

class _LightNewInsuranceState extends State<LightNewInsurance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LightMotorVehicle()));
          },
        ),
        backgroundColor: MunshiColor().munshiBlue,
        centerTitle: true,
        title: Text('New License Details'),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
      ),
    );
  }
}
