import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vehicle_master/Comman%20components/TextStyle.dart';
import 'package:vehicle_master/Comman%20components/colors.dart';
import 'package:vehicle_master/Screens/Add.dart';
import 'package:vehicle_master/Screens/CompanyDetails.dart';
import 'package:vehicle_master/Screens/EditProfile.dart';
import 'package:vehicle_master/Screens/FAQs.dart';
import 'package:vehicle_master/Screens/Home.dart';
import 'package:vehicle_master/Screens/Insurance.dart';
import 'package:vehicle_master/Screens/License.dart';
import 'package:vehicle_master/Screens/Permit.dart';
import 'package:vehicle_master/Screens/PrivacyPolicy.dart';
import 'package:vehicle_master/Screens/Quiz.dart';
import 'package:vehicle_master/Screens/ShowVehicleInfo.dart';
import 'package:vehicle_master/Screens/Taxes.dart';
import 'package:vehicle_master/Screens/Term&Condition.dart';
import 'package:vehicle_master/Screens/Trafficrules.dart';
import 'package:vehicle_master/Screens/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
            child: Material(
          color: MunshiColor().munshiWhite,
          child: ListView(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  color: MunshiColor().munshiBlue,
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.width * 0.2,
                        width: MediaQuery.of(context).size.width * 0.2,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.04),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: MunshiColor().munshiWhite,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.08,
                            top: MediaQuery.of(context).size.height * 0.06),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name here",
                              style: MunshiStyle().style16whitew400(),
                            ),
                            Text(
                              "Mobile Number here",
                              style: MunshiStyle().style16whitew400(),
                            ),
                            Text(
                              "Location here",
                              style: MunshiStyle().style16whitew400(),
                            ),
                            Text(
                              "Licence key here",
                              style: MunshiStyle().style16whitew400(),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: MunshiColor().munshiBlue,
                ),
                title: Text(
                  "Home",
                  style: MunshiStyle().style20blackw600(),
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.support,
                  color: MunshiColor().munshiBlue,
                ),
                title: Text(
                  "Support",
                  style: MunshiStyle().style20blackw600(),
                ),
                onTap: () {
                  var radiovalue = "email";
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Container(
                          child: AlertDialog(
                            title: Text('Support Via'),
                            content: StatefulBuilder(builder:
                                (BuildContext context, StateSetter myState) {
                              return Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.17,
                                width: MediaQuery.of(context).size.height * 0.2,
                                child: Column(
                                  children: [
                                    RadioListTile(
                                        title: Text("Email "),
                                        value: "email",
                                        groupValue: radiovalue,
                                        onChanged: (value) {
                                          myState(() {
                                            radiovalue = value.toString();
                                          });
                                        }),
                                    RadioListTile(
                                        title: Text("Phone"),
                                        value: "phone",
                                        groupValue: radiovalue,
                                        onChanged: (value) {
                                          myState(() {
                                            radiovalue = value.toString();
                                          });
                                        }),
                                  ],
                                ),
                              );
                            }),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () async {
                                  if (radiovalue == "email") {
                                    final email = 'hr@infiniteeclick.com';
                                    final url =
                                        'mailto:$email?subject=This is Subject Title&body=This is Body of Email';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    }
                                  } else if (radiovalue == "phone") {
                                    final phonenumber = 7441144440;
                                    final url = 'tel:$phonenumber';

                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    }
                                  } else {
                                    print("Nothing");
                                  }
                                },
                                child: Text('OK'),
                              )
                            ],
                          ),
                        );
                      });
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.live_help_outlined,
                  color: MunshiColor().munshiBlue,
                ),
                title: Text(
                  "FAQs",
                  style: MunshiStyle().style20blackw600(),
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => FAQ()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.privacy_tip,
                  color: MunshiColor().munshiBlue,
                ),
                title: Text(
                  "Privacy Policy",
                  style: MunshiStyle().style20blackw600(),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PrivacyPolicy()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.description_outlined,
                  color: MunshiColor().munshiBlue,
                ),
                title: Text(
                  "Terms & Conditions",
                  style: MunshiStyle().style20blackw600(),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TermandConditions()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: MunshiColor().munshiBlue,
                ),
                title: Text(
                  "Logout",
                  style: MunshiStyle().style20blackw600(),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
              ),
            ],
          ),
        )),
        appBar: AppBar(
          backgroundColor: MunshiColor().munshiBlue,
          centerTitle: true,
          title: Text('Home'),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(25),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () async {
                  final phonenumber = 7441144440;
                  final url = 'tel:$phonenumber';

                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                },
                icon: Icon(Icons.credit_card)),
          ],
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
                          child: Image.asset(
                            "assets/images/Slide1.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          height: h * 0.1,
                          width: w,
                          color: Colors.blue,
                          child: Image.asset(
                            "assets/images/Slide2.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        // Container(
                        //   height: h * 0.1,
                        //   width: w,
                        //   color: Colors.green,
                        // ),
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
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ShowVehicleInfo()));
                        },
                        child: Container(
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
                                    color: Colors.orange,
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
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Add(
                                        backbutton: true,
                                      )));
                        },
                        child: Container(
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
                                    color: Colors.blueAccent,
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
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: h * 0.02),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditProfile()));
                        },
                        child: Container(
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
                                    color: Colors.greenAccent,
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
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CompanyDetails()));
                        },
                        child: Container(
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
                                    color: Colors.redAccent,
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
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => License()));
                        },
                        child: Container(
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
                                    color: Colors.amber,
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
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Insurance()));
                        },
                        child: Container(
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
                                    color: Colors.red,
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
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: h * 0.02),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Permit()));
                        },
                        child: Container(
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
                                    color: Colors.purpleAccent,
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
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Taxes()));
                        },
                        child: Container(
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
                                    color: Colors.green,
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
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => FAQ()));
                        },
                        child: Container(
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
                                    color: Colors.indigoAccent,
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
                      ),
                      InkWell(
                        onTap: (() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Quiz()));
                        }),
                        child: Container(
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
                                    color: Colors.orange,
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
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: h * 0.02),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrafficRules()));
                        },
                        child: Container(
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
                                    color: Colors.lime,
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

// Widget NavigationDrawerWidget(context) {
//   return Drawer(
//       child: Material(
//     color: MunshiColor().munshiWhite,
//     child: ListView(
//       children: [
//         Container(
//             height: MediaQuery.of(context).size.height * 0.2,
//             color: MunshiColor().munshiBlue,
//             child: Row(
//               children: [
//                 Container(
//                   height: MediaQuery.of(context).size.width * 0.2,
//                   width: MediaQuery.of(context).size.width * 0.2,
//                   margin: EdgeInsets.only(
//                       left: MediaQuery.of(context).size.width * 0.04),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: MunshiColor().munshiWhite,
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(
//                       left: MediaQuery.of(context).size.width * 0.08,
//                       top: MediaQuery.of(context).size.height * 0.06),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Name here",
//                         style: MunshiStyle().style16whitew400(),
//                       ),
//                       Text(
//                         "Mobile Number here",
//                         style: MunshiStyle().style16whitew400(),
//                       ),
//                       Text(
//                         "Location here",
//                         style: MunshiStyle().style16whitew400(),
//                       ),
//                       Text(
//                         "Licence key here",
//                         style: MunshiStyle().style16whitew400(),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             )),
//         ListTile(
//           leading: Icon(
//             Icons.home,
//             color: MunshiColor().munshiBlue,
//           ),
//           title: Text(
//             "Home",
//             style: MunshiStyle().style20blackw600(),
//           ),
//           onTap: () {
//             Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => Home()));
//           },
//         ),
//         ListTile(
//           leading: Icon(
//             Icons.support,
//             color: MunshiColor().munshiBlue,
//           ),
//           title: Text(
//             "Support",
//             style: MunshiStyle().style20blackw600(),
//           ),
//           onTap: () {
//             var radiovalue = "email";
//             showDialog(
//                 context: context,
//                 builder: (context) {
//                   return Container(
//                     child: AlertDialog(
//                       title: Text('Support Via'),
//                       content: Container(
//                         height: MediaQuery.of(context).size.height * 0.2,
//                         width: MediaQuery.of(context).size.height * 0.2,
//                         child: Column(
//                           children: [
//                             RadioListTile(
//                                 title: Text("Email "),
//                                 value: "email",
//                                 groupValue: radiovalue,
//                                 onChanged: (value) {
//                                   radiovalue = value.toString();
//                                 }),
//                             RadioListTile(
//                                 title: Text("Phone"),
//                                 value: "phone",
//                                 groupValue: radiovalue,
//                                 onChanged: (value) {
//                                   radiovalue = value.toString();
//                                 }),
//                           ],
//                         ),
//                       ),
//                       actions: <Widget>[
//                         TextButton(
//                           onPressed: () {
//                             print('HelloWorld!');
//                           },
//                           child: Text('Ok'),
//                         )
//                       ],
//                     ),
//                   );
//                 });
//           },
//         ),
//         ListTile(
//           leading: Icon(
//             Icons.live_help_outlined,
//             color: MunshiColor().munshiBlue,
//           ),
//           title: Text(
//             "FAQs",
//             style: MunshiStyle().style20blackw600(),
//           ),
//           onTap: () {
//             Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => FAQ()));
//           },
//         ),
//         ListTile(
//           leading: Icon(
//             Icons.privacy_tip,
//             color: MunshiColor().munshiBlue,
//           ),
//           title: Text(
//             "Privacy Policy",
//             style: MunshiStyle().style20blackw600(),
//           ),
//           onTap: () {
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => PrivacyPolicy()));
//           },
//         ),
//         ListTile(
//           leading: Icon(
//             Icons.description_outlined,
//             color: MunshiColor().munshiBlue,
//           ),
//           title: Text(
//             "Terms & Conditions",
//             style: MunshiStyle().style20blackw600(),
//           ),
//           onTap: () {
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => TermandConditions()));
//           },
//         ),
//         ListTile(
//           leading: Icon(
//             Icons.logout,
//             color: MunshiColor().munshiBlue,
//           ),
//           title: Text(
//             "Logout",
//             style: MunshiStyle().style20blackw600(),
//           ),
//           onTap: () {
//             Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => Login()));
//           },
//         ),
//       ],
//     ),
//   ));
// }
