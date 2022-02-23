import 'package:flutter/material.dart';
import 'package:vehicle_master/Comman%20components/TextStyle.dart';
import 'package:vehicle_master/Comman%20components/colors.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:intl/intl.dart';

class Add extends StatefulWidget {
  bool backbutton;
  Add({Key? key, required this.backbutton}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  var h, w;
  var vehiclelist = ["Car", "Bike", "Truck", "Bus", "Tempo"];
  var radiovalue = "Insurance";
  var _chosenValue;
  var backButton;
  var date1, date2, date3, date4, date5, date6;

  DateTime initialDate1 = DateTime.now();
  Future<void> _selectDate1(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDate1,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != initialDate1)
      setState(() {
        initialDate1 = picked;
        date1 = (DateFormat('dd/MM/yyyy').toString());
      });
    builder:
    (context, child) {
      return Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Container(
              height: 100,
              width: 100,
              child: child,
            ),
          ),
        ],
      );
    };
  }

  DateTime initialDate2 = DateTime.now();
  Future<void> _selectDate2(BuildContext context) async {
    final DateTime? picked2 = await showDatePicker(
      context: context,
      initialDate: initialDate2,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked2 != null && picked2 != initialDate2)
      setState(() {
        initialDate2 = picked2;
        date2 = (DateFormat('dd/MM/yyyy').toString());
      });
    builder:
    (context, child) {
      return Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Container(
              height: 100,
              width: 100,
              child: child,
            ),
          ),
        ],
      );
    };
  }

  DateTime initialDate3 = DateTime.now();
  Future<void> _selectDate3(BuildContext context) async {
    final DateTime? picked3 = await showDatePicker(
      context: context,
      initialDate: initialDate3,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked3 != null && picked3 != initialDate3)
      setState(() {
        initialDate3 = picked3;
        date3 = (DateFormat('dd/MM/yyyy').toString());
      });
    builder:
    (context, child) {
      return Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Container(
              height: 100,
              width: 100,
              child: child,
            ),
          ),
        ],
      );
    };
  }

  DateTime initialDate4 = DateTime.now();
  Future<void> _selectDate4(BuildContext context) async {
    final DateTime? picked4 = await showDatePicker(
      context: context,
      initialDate: initialDate4,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked4 != null && picked4 != initialDate4)
      setState(() {
        initialDate4 = picked4;
        date4 = (DateFormat('dd/MM/yyyy').toString());
      });
    builder:
    (context, child) {
      return Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Container(
              height: 100,
              width: 100,
              child: child,
            ),
          ),
        ],
      );
    };
  }

  @override
  void initState() {
    // TODO: implement initState
    backButton = widget.backbutton;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: backButton
            ? IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            : Icon(
                Icons.arrow_back_ios,
                color: MunshiColor().munshiBlue,
              ),
        backgroundColor: MunshiColor().munshiBlue,
        centerTitle: true,
        title: Text('Add Vehicle Info'),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
      ),
      body: Container(
        height: backButton ? h * 0.9 : h * 0.84,
        width: w,
        color: MunshiColor().munshiCreme,
        child: Column(children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: h * 0.04, left: w * 0.04),
                child: Text(
                  "Owner Name:",
                  style: MunshiStyle().style20blackw600(),
                ),
              ),
              Container(
                height: h * 0.06,
                width: w * 0.5,
                margin: EdgeInsets.only(
                  left: w * 0.11,
                  top: h * 0.04,
                ),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  style: TextStyle(color: Colors.black, fontSize: 17),
                  decoration: InputDecoration(
                    fillColor: Colors.transparent,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1.2, color: MunshiColor().munshiBlue),
                    ),
                    focusedBorder: new OutlineInputBorder(
                      // borderRadius: new BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                          width: 1.2, color: MunshiColor().munshiBlue),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(
                          width: 1.2, color: MunshiColor().munshiBlue),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                          width: 1.2, color: MunshiColor().munshiBlue),
                    ),
                    // border: InputBorder.none,
                    hintText: "Enter Name",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: h * 0.04, left: w * 0.04),
                child: Text(
                  "Vehicle Number:",
                  style: MunshiStyle().style20blackw600(),
                ),
              ),
              Container(
                height: h * 0.06,
                width: w * 0.5,
                margin: EdgeInsets.only(
                  left: w * 0.04,
                  top: h * 0.04,
                ),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  style: TextStyle(color: Colors.black, fontSize: 17),
                  decoration: InputDecoration(
                    fillColor: Colors.transparent,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1.2, color: MunshiColor().munshiBlue),
                    ),
                    focusedBorder: new OutlineInputBorder(
                      // borderRadius: new BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                          width: 1.2, color: MunshiColor().munshiBlue),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(
                          width: 1.2, color: MunshiColor().munshiBlue),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                          width: 1.2, color: MunshiColor().munshiBlue),
                    ),
                    // border: InputBorder.none,
                    hintText: "Enter Vehicle Number",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: h * 0.04, left: w * 0.04),
                child: Text(
                  "Vehicle Type:",
                  style: MunshiStyle().style20blackw600(),
                ),
              ),
              Container(
                height: h * 0.06,
                width: w * 0.5,
                margin: EdgeInsets.only(
                  left: w * 0.11,
                  top: h * 0.04,
                ),

                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: MunshiColor().munshiBlue),
                  color: Colors.transparent,
                ),
                child: DropdownButton<String>(
                  underline: SizedBox(),
                  isExpanded: true,
                  value: _chosenValue,
                  //elevation: 5,
                  style: TextStyle(color: Colors.black),

                  items: vehiclelist
                      .map<DropdownMenuItem<String>>((String citylist) {
                    return DropdownMenuItem<String>(
                      value: citylist,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(citylist),
                      ),
                    );
                  }).toList(),
                  hint: Padding(
                    padding: EdgeInsets.only(left: w * 0.02),
                    child: Text(
                      "Select Vehicle Type",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),

                  onChanged: (value) {
                    setState(() {
                      _chosenValue = value;
                    });
                    print('valueee' + _chosenValue);
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: h * 0.02),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: w * 0.28),
                  child: Text(
                    "Start Date",
                    style: MunshiStyle().style12bluew400(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: w * 0.2),
                  child: Text(
                    "End Date",
                    style: MunshiStyle().style12bluew400(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: w * 0.1),
                  child: Text(
                    "LifeTime",
                    style: MunshiStyle().style12bluew400(),
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
                  height: h * 0.02,
                  width: w * 0.16,
                  margin: EdgeInsets.only(left: w * 0.02),
                  child: Text(
                    "Insurance",
                    style: MunshiStyle().style12bluew400(),
                  ),
                ),
                Container(
                  height: h * 0.05,
                  width: w * 0.32,
                  margin: EdgeInsets.only(left: w * 0.02),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(
                          color: radiovalue == "Insurance"
                              ? Colors.grey
                              : MunshiColor().munshiBlue),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Container(
                        width: w * 0.18,
                        margin: EdgeInsets.only(left: w * 0.012),
                        child: Text(
                          radiovalue != "Insurance"
                              ? date1 == null
                                  ? ""
                                  : date1
                              : "",
                          style: MunshiStyle().style12blackw400(),
                        ),
                      ),
                      IconButton(
                          onPressed: () async {
                            if (radiovalue != "Insurance")
                              await _selectDate1(context);
                            date1 = (DateFormat('dd/MM/yyyy')
                                .format(initialDate1)
                                .toString());
                          },
                          icon: Icon(
                            Icons.calendar_today,
                            color: radiovalue == "Insurance"
                                ? Colors.grey
                                : MunshiColor().munshiBlue,
                            size: 20,
                          ))
                    ],
                  ),
                ),
                Container(
                  height: h * 0.05,
                  width: w * 0.32,
                  margin: EdgeInsets.only(left: w * 0.02),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(
                          color: radiovalue == "Insurance"
                              ? Colors.grey
                              : MunshiColor().munshiBlue),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Container(
                        width: w * 0.18,
                        margin: EdgeInsets.only(left: w * 0.012),
                        child: Text(
                          radiovalue != "Insurance"
                              ? date2 == null
                                  ? ""
                                  : date2
                              : "",
                          style: MunshiStyle().style12blackw400(),
                        ),
                      ),
                      IconButton(
                          onPressed: () async {
                            if (radiovalue != "Insurance")
                              await _selectDate2(context);
                            date2 = (DateFormat('dd/MM/yyyy')
                                .format(initialDate2)
                                .toString());
                          },
                          icon: Icon(
                            Icons.calendar_today,
                            color: radiovalue == "Insurance"
                                ? Colors.grey
                                : MunshiColor().munshiBlue,
                            size: 20,
                          ))
                    ],
                  ),
                ),
                Radio(
                    value: "Insurance",
                    groupValue: radiovalue,
                    onChanged: (value) {
                      setState(() {
                        radiovalue = value.toString();
                      });
                    })
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: h * 0.02),
            child: Row(
              children: [
                Container(
                  height: h * 0.02,
                  width: w * 0.16,
                  margin: EdgeInsets.only(left: w * 0.02),
                  child: Text(
                    "Fitness",
                    style: MunshiStyle().style12bluew400(),
                  ),
                ),
                Container(
                  height: h * 0.05,
                  width: w * 0.32,
                  margin: EdgeInsets.only(left: w * 0.02),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(
                          color: radiovalue == "Fitness"
                              ? Colors.grey
                              : MunshiColor().munshiBlue),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Container(
                        width: w * 0.18,
                        margin: EdgeInsets.only(left: w * 0.012),
                        child: Text(
                          radiovalue != "Fitness"
                              ? date3 == null
                                  ? ""
                                  : date3
                              : "",
                          style: MunshiStyle().style12blackw400(),
                        ),
                      ),
                      IconButton(
                          onPressed: () async {
                            await _selectDate3(context);
                            date3 = (DateFormat('dd/MM/yyyy')
                                .format(initialDate3)
                                .toString());
                          },
                          icon: Icon(
                            Icons.calendar_today,
                            color: radiovalue == "Fitness"
                                ? Colors.grey
                                : MunshiColor().munshiBlue,
                            size: 20,
                          ))
                    ],
                  ),
                ),
                Container(
                  height: h * 0.05,
                  width: w * 0.32,
                  margin: EdgeInsets.only(left: w * 0.02),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(
                          color: radiovalue == "Fitness"
                              ? Colors.grey
                              : MunshiColor().munshiBlue),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Container(
                        width: w * 0.18,
                        margin: EdgeInsets.only(left: w * 0.012),
                        child: Text(
                          radiovalue != "Fitness"
                              ? date4 == null
                                  ? ""
                                  : date4
                              : "",
                          style: MunshiStyle().style12blackw400(),
                        ),
                      ),
                      IconButton(
                          onPressed: () async {
                            await _selectDate4(context);
                            date4 = (DateFormat('dd/MM/yyyy')
                                .format(initialDate4)
                                .toString());
                          },
                          icon: Icon(
                            Icons.calendar_today,
                            color: radiovalue == "Fitness"
                                ? Colors.grey
                                : MunshiColor().munshiBlue,
                            size: 20,
                          ))
                    ],
                  ),
                ),
                Radio(
                    value: "Fitness",
                    groupValue: radiovalue,
                    onChanged: (value) {
                      setState(() {
                        radiovalue = value.toString();
                      });
                    })
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
