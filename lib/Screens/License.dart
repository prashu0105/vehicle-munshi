import 'package:flutter/material.dart';
import 'package:vehicle_master/Comman%20components/TextStyle.dart';
import 'package:vehicle_master/Comman%20components/colors.dart';
import 'package:vehicle_master/Screens/New_License.dart';
import 'package:vehicle_master/Screens/RenewLicense.dart';

class License extends StatefulWidget {
  License({Key? key}) : super(key: key);

  @override
  State<License> createState() => _LicenseState();
}

class _LicenseState extends State<License> {
  var h, w;
  var radiovalue = "New";
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
        title: Text('License'),
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
                "Select",
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
                        title: Text("Apply for New License"),
                        tileColor: MunshiColor().munshiBlue,
                        value: "New",
                        groupValue: radiovalue,
                        onChanged: (value) {
                          setState(() {
                            radiovalue = value.toString();
                          });
                        }),
                    RadioListTile(
                        activeColor: MunshiColor().munshiBlue,
                        title: Text("Renew License"),
                        tileColor: MunshiColor().munshiBlue,
                        value: "Renew",
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
                if (radiovalue == "New") {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NewLicense()));
                } else if (radiovalue == "Renew") {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RenewLicense()));
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
                      "Select",
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
