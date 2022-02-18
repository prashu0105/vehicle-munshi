import 'package:flutter/material.dart';
import 'package:vehicle_master/Comman%20components/TextStyle.dart';
import 'package:vehicle_master/Comman%20components/colors.dart';
import 'package:vehicle_master/Screens/ShowVehicleInfo.dart';

class VehicleDetails extends StatefulWidget {
  VehicleDetails({Key? key}) : super(key: key);

  @override
  State<VehicleDetails> createState() => _VehicleDetailsState();
}

class _VehicleDetailsState extends State<VehicleDetails> {
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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ShowVehicleInfo()));
          },
        ),
        backgroundColor: MunshiColor().munshiBlue,
        centerTitle: true,
        title: Text('Vehicle Details'),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: h * 1.56,
          width: w,
          color: MunshiColor().munshiCreme,
          child: Column(
            children: [
              Container(
                height: h * 0.2,
                width: w * 0.9,
                margin: EdgeInsets.only(
                    left: w * 0.05, right: w * 0.05, top: h * 0.02),
                decoration: BoxDecoration(
                    color: MunshiColor().munshiWhite,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Row(
                  children: [
                    Container(
                      height: w * 0.3,
                      width: w * 0.3,
                      // color: Colors.red,
                      margin: EdgeInsets.only(left: w * 0.04),
                      child: Image.asset(
                        "assets/images/Truck.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: w * 0.04,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: h * 0.02),
                          child: Text(
                            "Registration Number:",
                            style: MunshiStyle().style16greyw600(),
                          ),
                        ),
                        Text(
                          "123456789",
                          style: MunshiStyle().style24blackw600(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: h * 0.02),
                          child: Text(
                            "Owner Name:",
                            style: MunshiStyle().style16greyw600(),
                          ),
                        ),
                        Text(
                          "Jack Adward",
                          style: MunshiStyle().style24blackw600(),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: h * 0.5,
                width: w * 0.9,
                margin: EdgeInsets.only(
                    left: w * 0.05, right: w * 0.05, top: h * 0.02),
                decoration: BoxDecoration(
                    color: MunshiColor().munshiWhite,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.02, left: w * 0.04),
                      child: Text(
                        "OwnerShip Details",
                        style: MunshiStyle().style24blackw600(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.012, left: w * 0.04),
                      child: Text(
                        "Owner Name",
                        style: MunshiStyle().style16bluew600(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: w * 0.04),
                      child: Text(
                        "Jack Adward",
                        style: MunshiStyle().style20blackw600(),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.012, left: w * 0.04),
                      child: Text(
                        "Ownership (Serial No.)",
                        style: MunshiStyle().style16bluew600(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: w * 0.04),
                      child: Text(
                        "123456789",
                        style: MunshiStyle().style20blackw600(),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.012, left: w * 0.04),
                      child: Text(
                        "Registration Number",
                        style: MunshiStyle().style16bluew600(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: w * 0.04),
                      child: Text(
                        "AB00AB0000",
                        style: MunshiStyle().style20blackw600(),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.012, left: w * 0.04),
                      child: Text(
                        "Financial Details",
                        style: MunshiStyle().style16bluew600(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: w * 0.04),
                      child: Text(
                        "S B of Indore",
                        style: MunshiStyle().style20blackw600(),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.012, left: w * 0.04),
                      child: Text(
                        "Registering Authority",
                        style: MunshiStyle().style16bluew600(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: w * 0.04),
                      child: Text(
                        "RTO Indore,Madhya Pradesh",
                        style: MunshiStyle().style20blackw600(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: h * 0.5,
                width: w * 0.9,
                margin: EdgeInsets.only(
                    left: w * 0.05, right: w * 0.05, top: h * 0.02),
                decoration: BoxDecoration(
                    color: MunshiColor().munshiWhite,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.02, left: w * 0.04),
                      child: Text(
                        "Vehicle Details",
                        style: MunshiStyle().style24blackw600(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.012, left: w * 0.04),
                      child: Text(
                        "Model Name",
                        style: MunshiStyle().style16bluew600(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: w * 0.04),
                      child: Text(
                        "Bajaj CT 100",
                        style: MunshiStyle().style20blackw600(),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.012, left: w * 0.04),
                      child: Text(
                        "Manufacturer",
                        style: MunshiStyle().style16bluew600(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: w * 0.04),
                      child: Text(
                        "Bajaj Auto",
                        style: MunshiStyle().style20blackw600(),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.012, left: w * 0.04),
                      child: Text(
                        "Vehicle Class",
                        style: MunshiStyle().style16bluew600(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: w * 0.04),
                      child: Text(
                        "Motorcycle(SCR)",
                        style: MunshiStyle().style20blackw600(),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.012, left: w * 0.04),
                      child: Text(
                        "Fuel Type",
                        style: MunshiStyle().style16bluew600(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: w * 0.04),
                      child: Text(
                        "Petrol",
                        style: MunshiStyle().style20blackw600(),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.012, left: w * 0.04),
                      child: Text(
                        "Engine Number",
                        style: MunshiStyle().style16bluew600(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: w * 0.04),
                      child: Text(
                        "ABCDEF00000",
                        style: MunshiStyle().style20blackw600(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: h * 0.24,
                width: w * 0.9,
                margin: EdgeInsets.only(
                    left: w * 0.05, right: w * 0.05, top: h * 0.02),
                decoration: BoxDecoration(
                    color: MunshiColor().munshiWhite,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.02, left: w * 0.04),
                      child: Text(
                        "Important Dates",
                        style: MunshiStyle().style24blackw600(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.012, left: w * 0.04),
                      child: Text(
                        "Registration Date",
                        style: MunshiStyle().style16bluew600(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: w * 0.04),
                      child: Text(
                        "1-1-2022",
                        style: MunshiStyle().style20blackw600(),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.012, left: w * 0.04),
                      child: Text(
                        "Vehicle Age",
                        style: MunshiStyle().style16bluew600(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: w * 0.04),
                      child: Text(
                        "5 years",
                        style: MunshiStyle().style20blackw600(),
                      ),
                    ),
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
