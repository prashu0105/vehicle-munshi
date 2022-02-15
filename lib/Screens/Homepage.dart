import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vehicle_master/Comman%20components/TextStyle.dart';
import 'package:vehicle_master/Comman%20components/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu, color: MunshiColor().munshiWhite),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: MunshiColor().munshiBlue,
          centerTitle: true,
          title: Text('Home'),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(25),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: w,
            color: MunshiColor().munshiCreme,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: h * 0.02),
                  child: CarouselSlider(
                      items: [
                        Container(
                          height: h * 0.1,
                          width: w,
                          color: Colors.red,
                        ),
                        Container(
                          height: h * 0.1,
                          width: w,
                          color: Colors.blue,
                        ),
                        Container(
                          height: h * 0.1,
                          width: w,
                          color: Colors.green,
                        ),
                      ],
                      options: CarouselOptions(
                        autoPlay: true,
                        viewportFraction: 1.0,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: w * 0.04, top: h * 0.02),
                  child: Text(
                    "Vehicle Information",
                    style: MunshiStyle().style24blackw600(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: h * 0.02),
                  child: Row(
                    children: [
                      Container(
                        height: h * 0.16,
                        width: w * 0.44,
                        color: MunshiColor().munshiWhite,
                        margin: EdgeInsets.only(left: w * 0.04),
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: h * 0.02),
                                child: Icon(
                                  Icons.car_rental,
                                  size: 40,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: h * 0.02),
                                child: Text(
                                  "Show Vehicle Info",
                                  style: MunshiStyle().style20blackw600(),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: h * 0.16,
                        width: w * 0.44,
                        color: MunshiColor().munshiWhite,
                        margin: EdgeInsets.only(left: w * 0.04),
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: h * 0.02),
                                child: Icon(
                                  Icons.car_repair,
                                  size: 40,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: h * 0.02),
                                child: Text(
                                  "Add Vehicle Info",
                                  style: MunshiStyle().style20blackw600(),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: h * 0.02),
                  child: Row(
                    children: [
                      Container(
                        height: h * 0.16,
                        width: w * 0.44,
                        color: MunshiColor().munshiWhite,
                        margin: EdgeInsets.only(left: w * 0.04),
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: h * 0.02),
                                child: Icon(
                                  Icons.details_outlined,
                                  size: 40,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: h * 0.02),
                                child: Text(
                                  "Personal Details",
                                  style: MunshiStyle().style20blackw600(),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: h * 0.16,
                        width: w * 0.44,
                        color: MunshiColor().munshiWhite,
                        margin: EdgeInsets.only(left: w * 0.04),
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: h * 0.02),
                                child: Icon(
                                  Icons.stars,
                                  size: 40,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: h * 0.02),
                                child: Text(
                                  "Company Details",
                                  style: MunshiStyle().style20blackw600(),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: w * 0.04, top: h * 0.02),
                  child: Text(
                    "RTO Services",
                    style: MunshiStyle().style24blackw600(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: h * 0.02),
                  child: Row(
                    children: [
                      Container(
                        height: h * 0.16,
                        width: w * 0.44,
                        color: MunshiColor().munshiWhite,
                        margin: EdgeInsets.only(left: w * 0.04),
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: h * 0.02),
                                child: Icon(
                                  Icons.security_rounded,
                                  size: 40,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: h * 0.02),
                                child: Text(
                                  "License",
                                  style: MunshiStyle().style20blackw600(),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: h * 0.16,
                        width: w * 0.44,
                        color: MunshiColor().munshiWhite,
                        margin: EdgeInsets.only(left: w * 0.04),
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: h * 0.02),
                                child: Icon(
                                  Icons.info,
                                  size: 40,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: h * 0.02),
                                child: Text(
                                  "Insurance",
                                  style: MunshiStyle().style20blackw600(),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: h * 0.02),
                  child: Row(
                    children: [
                      Container(
                        height: h * 0.16,
                        width: w * 0.44,
                        color: MunshiColor().munshiWhite,
                        margin: EdgeInsets.only(left: w * 0.04),
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: h * 0.02),
                                child: Icon(
                                  Icons.perm_scan_wifi_outlined,
                                  size: 40,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: h * 0.02),
                                child: Text(
                                  "Permit",
                                  style: MunshiStyle().style20blackw600(),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: h * 0.16,
                        width: w * 0.44,
                        color: MunshiColor().munshiWhite,
                        margin: EdgeInsets.only(left: w * 0.04),
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: h * 0.02),
                                child: Icon(
                                  Icons.password_outlined,
                                  size: 40,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: h * 0.02),
                                child: Text(
                                  "Taxes",
                                  style: MunshiStyle().style20blackw600(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: w * 0.04, top: h * 0.02),
                  child: Text(
                    "RTO Information",
                    style: MunshiStyle().style24blackw600(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: h * 0.02),
                  child: Row(
                    children: [
                      Container(
                        height: h * 0.16,
                        width: w * 0.44,
                        color: MunshiColor().munshiWhite,
                        margin: EdgeInsets.only(left: w * 0.04),
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: h * 0.02),
                                child: Icon(
                                  Icons.check_box_outlined,
                                  size: 40,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: h * 0.02),
                                child: Text(
                                  "RTO Related Faqs",
                                  style: MunshiStyle().style20blackw600(),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: h * 0.16,
                        width: w * 0.44,
                        color: MunshiColor().munshiWhite,
                        margin: EdgeInsets.only(left: w * 0.04),
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: h * 0.02),
                                child: Icon(
                                  Icons.info,
                                  size: 40,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: h * 0.02),
                                child: Text(
                                  "RTO Quiz",
                                  style: MunshiStyle().style20blackw600(),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: h * 0.02),
                  child: Row(
                    children: [
                      Container(
                        height: h * 0.16,
                        width: w * 0.44,
                        color: MunshiColor().munshiWhite,
                        margin: EdgeInsets.only(left: w * 0.04),
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: h * 0.02),
                                child: Icon(
                                  Icons.message_outlined,
                                  size: 40,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: h * 0.02),
                                child: Text(
                                  "Traffic Rules",
                                  style: MunshiStyle().style20blackw600(),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      // Container(
                      //   height: h * 0.16,
                      //   width: w * 0.44,
                      //   color: MunshiColor().munshiWhite,
                      //   margin: EdgeInsets.only(left: w * 0.04),
                      //   child: Center(
                      //     child: Column(
                      //       children: [
                      //         Padding(
                      //           padding: EdgeInsets.only(top: h * 0.02),
                      //           child: Icon(
                      //             Icons.password_outlined,
                      //             size: 40,
                      //           ),
                      //         ),
                      //         Padding(
                      //           padding: EdgeInsets.only(top: h * 0.02),
                      //           child: Text(
                      //             "Taxes",
                      //             style: MunshiStyle().style20blackw600(),
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.08,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}