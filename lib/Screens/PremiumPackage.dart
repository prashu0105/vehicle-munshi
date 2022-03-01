import 'package:flutter/material.dart';
import 'package:vehicle_master/Comman%20components/TextStyle.dart';
import 'package:vehicle_master/Comman%20components/colors.dart';
import 'package:vehicle_master/Screens/Package.dart';

class PremiumPackage extends StatefulWidget {
  PremiumPackage({Key? key}) : super(key: key);

  @override
  State<PremiumPackage> createState() => _PremiumPackageState();
}

class _PremiumPackageState extends State<PremiumPackage> {
  var h, w;
  var radiovalue;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Package()));
          },
        ),
        backgroundColor: MunshiColor().munshiBlue,
        centerTitle: true,
        title: Text('Premium Package'),
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
                "Select Payment Gateway",
                style: MunshiStyle().style28blackw600(),
              ),
            ),
            Container(
                height: h * 0.16,
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
                        title: Text("Pay via Cash"),
                        tileColor: MunshiColor().munshiBlue,
                        value: "cash",
                        groupValue: radiovalue,
                        onChanged: (value) {
                          setState(() {
                            radiovalue = value.toString();
                          });
                        }),
                    RadioListTile(
                        activeColor: MunshiColor().munshiBlue,
                        title: Text("Pay Online"),
                        tileColor: MunshiColor().munshiBlue,
                        value: "online",
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
                if (radiovalue == "cash") {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => NewPermit()));
                } else if (radiovalue == "online") {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => RenewPermit()));
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
