import 'package:flutter/material.dart';
import 'package:vehicle_master/Comman%20components/TextStyle.dart';
import 'package:vehicle_master/Comman%20components/colors.dart';
import 'package:vehicle_master/Screens/BasicPackage.dart';
import 'package:vehicle_master/Screens/PremiumPackage.dart';
import 'package:vehicle_master/Screens/ProfessionalPackage.dart';

class Package extends StatefulWidget {
  Package({Key? key}) : super(key: key);

  @override
  State<Package> createState() => _PackageState();
}

class _PackageState extends State<Package> {
  var radiovalue;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
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
        title: Text('Package'),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: w * 0.04, top: h * 0.02),
              child: Text(
                "Select Your Package",
                style: MunshiStyle().style28blackw600(),
              ),
            ),
            Container(
                height: h * 0.2,
                width: w * 0.9,
                margin: EdgeInsets.only(
                    left: w * 0.05, right: w * 0.05, top: h * 0.02),
                decoration: BoxDecoration(
                  color: MunshiColor().munshiWhite,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Column(
                  children: [
                    RadioListTile(
                        activeColor: MunshiColor().munshiBlue,
                        title: Text("Basic"),
                        tileColor: MunshiColor().munshiBlue,
                        value: "basic",
                        groupValue: radiovalue,
                        onChanged: (value) {
                          setState(() {
                            radiovalue = value.toString();
                          });
                        }),
                    RadioListTile(
                        activeColor: MunshiColor().munshiBlue,
                        title: Text("Professional"),
                        tileColor: MunshiColor().munshiBlue,
                        value: "professional",
                        groupValue: radiovalue,
                        onChanged: (value) {
                          setState(() {
                            radiovalue = value.toString();
                          });
                        }),
                    RadioListTile(
                        activeColor: MunshiColor().munshiBlue,
                        title: Text("Premium"),
                        tileColor: MunshiColor().munshiBlue,
                        value: "premium",
                        groupValue: radiovalue,
                        onChanged: (value) {
                          setState(() {
                            radiovalue = value.toString();
                          });
                        }),
                  ],
                )),
            InkWell(
              onTap: () {
                if (radiovalue == "basic") {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BasicPackage()));
                } else if (radiovalue == "professional") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfessionalPackage()));
                } else if (radiovalue == "premium") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PremiumPackage()));
                } else {}
              },
              child: Center(
                child: Container(
                  height: h * 0.06,
                  width: w * 0.8,
                  margin: EdgeInsets.only(top: h * 0.05),
                  decoration: BoxDecoration(
                    color: MunshiColor().munshiBlue,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Center(
                    child: Text(
                      "Pay",
                      style: MunshiStyle().style24whitew600(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
