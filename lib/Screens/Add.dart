import 'package:flutter/material.dart';
import 'package:vehicle_master/Comman%20components/TextStyle.dart';
import 'package:vehicle_master/Comman%20components/colors.dart';

class Add extends StatefulWidget {
  bool backbutton;
  Add({Key? key, required this.backbutton}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  var h, w;
  var vehiclelist = ["Car", "Bike", "Truck", "Bus", "Tempo"];
  var _chosenValue;
  var backButton;

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
        ]),
      ),
    );
  }
}
