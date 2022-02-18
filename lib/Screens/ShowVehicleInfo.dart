import 'package:flutter/material.dart';
import 'package:vehicle_master/Comman%20components/TextStyle.dart';
import 'package:vehicle_master/Comman%20components/colors.dart';
import 'package:vehicle_master/Screens/VehicleDetails.dart';

class ShowVehicleInfo extends StatefulWidget {
  ShowVehicleInfo({Key? key}) : super(key: key);

  @override
  State<ShowVehicleInfo> createState() => _ShowVehicleInfoState();
}

class _ShowVehicleInfoState extends State<ShowVehicleInfo> {
  var h, w;
  var _formKey = GlobalKey<FormState>();
  TextEditingController vechno_controller = new TextEditingController();
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
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
              height: h * 0.9,
              width: w,
              color: MunshiColor().munshiCreme,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: h * 0.3,
                    width: w * 0.92,
                    color: MunshiColor().munshiWhite,
                    margin: EdgeInsets.only(
                        right: w * 0.04, left: w * 0.04, top: h * 0.02),
                    child: Column(
                      children: [
                        Container(
                            margin:
                                EdgeInsets.only(top: h * 0.02, left: w * 0.08),
                            child: Text(
                              "Enter Vehicle Details",
                              style: MunshiStyle().style28blackw600(),
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: h * 0.04),
                          child: Row(
                            children: [
                              Container(
                                height: w * 0.1,
                                width: w * 0.1,
                                margin: EdgeInsets.only(left: w * 0.05),
                                child: Icon(
                                  Icons.electric_bike_rounded,
                                  color: MunshiColor().munshiBlue,
                                ),
                              ),
                              Container(
                                height: w * 0.1,
                                width: w * 0.7,
                                margin: EdgeInsets.only(
                                    left: w * 0.03, right: w * 0.03),
                                child: TextFormField(
                                  controller: vechno_controller,
                                  decoration: InputDecoration(
                                    hintText: "GJ00XX2022",
                                  ),
                                  keyboardType: TextInputType.name,
                                  validator: (value) {
                                    if (value!.length != 8)
                                      return 'Vehiicle Number  must have 8 digit';
                                    else
                                      return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: InkWell(
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            VehicleDetails()));
                              }
                            },
                            child: Container(
                              height: h * 0.06,
                              width: w * 0.8,
                              margin: EdgeInsets.only(top: h * 0.05),
                              decoration: BoxDecoration(
                                color: MunshiColor().munshiBlue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                              ),
                              child: Center(
                                child: Text(
                                  "Search",
                                  style: MunshiStyle().style24whitew600(),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: h * 0.02, left: w * 0.08),
                      child: Text(
                        "Vehicle Details",
                        style: MunshiStyle().style24bluew600(),
                      )),
                  Container(
                      height: h * 0.16,
                      width: w * 0.92,
                      color: MunshiColor().munshiWhite,
                      margin: EdgeInsets.only(
                          right: w * 0.04, left: w * 0.04, top: h * 0.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(left: w * 0.04, top: h * 0.01),
                            child: Text(
                              "Registration Number : ",
                              style: MunshiStyle().style14blackw600(),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: w * 0.04, top: h * 0.01),
                            child: Text(
                              "AB00AB0000",
                              style: MunshiStyle().style16bluew400(),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: w * 0.04, top: h * 0.02),
                            child: Text(
                              "Owner Name : ",
                              style: MunshiStyle().style14blackw600(),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: w * 0.04, top: h * 0.01),
                            child: Text(
                              "John avid",
                              style: MunshiStyle().style16bluew400(),
                            ),
                          ),
                        ],
                      )),
                ],
              )),
        ),
      ),
    );
  }
}
