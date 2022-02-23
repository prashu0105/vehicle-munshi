import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_master/Comman%20components/TextStyle.dart';
import 'package:vehicle_master/Comman%20components/colors.dart';
import 'package:vehicle_master/Screens/login.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var h, w;
  var _formKey = GlobalKey<FormState>();
  bool _obsure = true;
  bool _obsure1 = true;
  TextEditingController name_controller = new TextEditingController();
  TextEditingController email_controller = new TextEditingController();
  TextEditingController phone_controller = new TextEditingController();
  TextEditingController address_controller = new TextEditingController();
  TextEditingController password_controller = new TextEditingController();
  TextEditingController confirmpasssword_controller =
      new TextEditingController();
  var state;
  var signupdata;

  doSignup() async {
    state = 'loading';
    setState(() {});
    try {
      Dio dio = new Dio();
      FormData formData = FormData.fromMap({
        "customer_name": "${name_controller.text}",
        "customer_email": "${email_controller.text}",
        "customer_number": "${phone_controller.text}",
        "address": "${address_controller.text}",
        "city": "indore",
        "state": "mp",
        "password": "${password_controller.text}"
      });

      await dio
          .post(
              "http://www.techtradedu.com/vehicle-munshi/api/customer-registration",
              data: formData)
          .then((value) {
        signupdata = json.decode(value.toString());
      });
      log(jsonEncode(signupdata));
      if (signupdata['status'].toString() == "true") {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("${signupdata['msg']}"),
            backgroundColor: Colors.green,
          ),
        );
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Login()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("${signupdata['msg']}"),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      log("Error $e");
    }
    state = 'buttonPress';
    setState(() {});
  }

  var statedata;
  getStateList() async {
    state = 'loading';
    setState(() {});
    try {
      Dio dio = new Dio();
      FormData formData = FormData.fromMap({});

      await dio
          .post("http://www.techtradedu.com/vehicle-munshi/api/states",
              data: formData)
          .then((value) {
        statedata = json.decode(value.toString());
      });
      log("List of State" + jsonEncode(statedata));
      if (statedata['status'].toString() == "true") {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("${statedata['msg']}"),
            backgroundColor: Colors.green,
          ),
        );
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => Login()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("${statedata['msg']}"),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      log("Error $e");
    }
    state = 'buttonPress';
    setState(() {});
  }

  @override
  void initState() {
    // getStateList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: MunshiColor().munshiBlue,
          centerTitle: true,
          title: Text('Sign Up'),
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
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: h * 0.04),
                    child: Row(
                      children: [
                        Container(
                          height: w * 0.1,
                          width: w * 0.1,
                          margin: EdgeInsets.only(left: w * 0.05),
                          child: Icon(
                            Icons.person_outline_outlined,
                            color: MunshiColor().munshiBlue,
                          ),
                        ),
                        Container(
                          height: w * 0.1,
                          width: w * 0.7,
                          margin:
                              EdgeInsets.only(left: w * 0.03, right: w * 0.03),
                          child: TextFormField(
                            controller: name_controller,
                            decoration: InputDecoration(
                              hintText: "Enter Name",
                            ),
                            keyboardType: TextInputType.name,
                            validator: (value) {
                              if (value!.isEmpty)
                                return 'Name is Required';
                              else
                                return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h * 0.04),
                    child: Row(
                      children: [
                        Container(
                          height: w * 0.1,
                          width: w * 0.1,
                          margin: EdgeInsets.only(left: w * 0.05),
                          child: Icon(
                            Icons.mail_outline_outlined,
                            color: MunshiColor().munshiBlue,
                          ),
                        ),
                        Container(
                          height: w * 0.1,
                          width: w * 0.7,
                          margin:
                              EdgeInsets.only(left: w * 0.03, right: w * 0.03),
                          child: TextFormField(
                            controller: email_controller,
                            decoration: InputDecoration(
                              hintText: "Enter E-mail",
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value!.isEmpty)
                                return 'Email is Required';
                              else
                                return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h * 0.04),
                    child: Row(
                      children: [
                        Container(
                          height: w * 0.1,
                          width: w * 0.1,
                          margin: EdgeInsets.only(left: w * 0.05),
                          child: Icon(
                            Icons.phone_android_outlined,
                            color: MunshiColor().munshiBlue,
                          ),
                        ),
                        Container(
                          height: w * 0.1,
                          width: w * 0.7,
                          margin:
                              EdgeInsets.only(left: w * 0.03, right: w * 0.03),
                          child: TextFormField(
                            controller: phone_controller,
                            decoration: InputDecoration(
                              hintText: "Enter Mobile Number",
                            ),
                            keyboardType: TextInputType.phone,
                            validator: (value) {
                              if (value!.length != 10)
                                return 'Mobile Number must be of 10 digit';
                              else
                                return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h * 0.04),
                    child: Row(
                      children: [
                        Container(
                          height: w * 0.1,
                          width: w * 0.1,
                          margin: EdgeInsets.only(left: w * 0.05),
                          child: Icon(
                            Icons.contacts_outlined,
                            color: MunshiColor().munshiBlue,
                          ),
                        ),
                        Container(
                          height: w * 0.1,
                          width: w * 0.7,
                          margin:
                              EdgeInsets.only(left: w * 0.03, right: w * 0.03),
                          child: TextFormField(
                            controller: address_controller,
                            decoration: InputDecoration(
                              hintText: "Enter Full Address",
                            ),
                            keyboardType: TextInputType.streetAddress,
                            validator: (value) {
                              if (value!.isEmpty)
                                return 'Addresss is required';
                              else
                                return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h * 0.04),
                    child: Row(
                      children: [
                        Container(
                          height: w * 0.1,
                          width: w * 0.1,
                          margin: EdgeInsets.only(left: w * 0.05),
                          child: Icon(
                            Icons.password_outlined,
                            color: MunshiColor().munshiBlue,
                          ),
                        ),
                        Container(
                          height: w * 0.1,
                          width: w * 0.7,
                          margin:
                              EdgeInsets.only(left: w * 0.03, right: w * 0.03),
                          child: TextFormField(
                            obscureText: _obsure,
                            controller: password_controller,
                            decoration: InputDecoration(
                                hintText: "Enter Password",
                                suffix: IconButton(
                                  icon: _obsure
                                      ? Icon(Icons.visibility)
                                      : Icon(Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      _obsure = !_obsure;
                                    });
                                  },
                                )),
                            keyboardType: TextInputType.visiblePassword,
                            validator: (value) {
                              if (value!.length <= 8)
                                return 'Password should be at least 8 Characters';
                              else
                                return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h * 0.04),
                    child: Row(
                      children: [
                        Container(
                          height: w * 0.1,
                          width: w * 0.1,
                          margin: EdgeInsets.only(left: w * 0.05),
                          child: Icon(
                            Icons.password_outlined,
                            color: MunshiColor().munshiBlue,
                          ),
                        ),
                        Container(
                          height: w * 0.1,
                          width: w * 0.7,
                          margin:
                              EdgeInsets.only(left: w * 0.03, right: w * 0.03),
                          child: TextFormField(
                            obscureText: _obsure1,
                            controller: confirmpasssword_controller,
                            decoration: InputDecoration(
                                hintText: "Enter Confirm Password",
                                suffix: IconButton(
                                  icon: _obsure1
                                      ? Icon(Icons.visibility)
                                      : Icon(Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      _obsure1 = !_obsure1;
                                    });
                                  },
                                )),
                            keyboardType: TextInputType.visiblePassword,
                            validator: (value) {
                              if (value!.length <= 8)
                                return 'Password should be at least 8 Characters';
                              else
                                return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        // doSignup();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      }
                    },
                    child: state == "loading"
                        ? Center(
                            child: CircularProgressIndicator(
                              color: MunshiColor().munshiBlue,
                            ),
                          )
                        : Container(
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
                                "Sign up",
                                style: MunshiStyle().style24whitew600(),
                              ),
                            ),
                          ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
