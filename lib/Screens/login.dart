import 'dart:convert';
import 'dart:developer';
import 'package:url_launcher/url_launcher.dart';
import 'package:dio/dio.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_master/Comman%20components/TextStyle.dart';
import 'package:vehicle_master/Comman%20components/colors.dart';
import 'package:vehicle_master/Screens/OTP.dart';
import 'package:vehicle_master/Screens/signup.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var h, w;
  var _formKey = GlobalKey<FormState>();
  TextEditingController phone_controller = new TextEditingController();
  var state, logindata, otp;
  doLogin() async {
    state = 'loading';
    setState(() {});
    try {
      Dio dio = new Dio();
      FormData formData = FormData.fromMap({
        "customer_number": "${phone_controller.text}",
      });

      await dio
          .post("http://www.techtradedu.com/vehicle-munshi/api/send_otp_mobile",
              data: formData)
          .then((value) {
        logindata = json.decode(value.toString());
        otp = logindata['otp'];
      });
      log(jsonEncode(logindata));
      if (logindata['success'].toString() == "true") {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("${logindata['message']}"),
            backgroundColor: Colors.green,
          ),
        );
        Navigator.push(context, MaterialPageRoute(builder: (context) => OTP()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("${logindata['message']}"),
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

  launchphone() {}

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: Icon(
              Icons.arrow_back_ios,
              color: MunshiColor().munshiBlue,
            ),
            backgroundColor: MunshiColor().munshiBlue,
            centerTitle: true,
            title: Text('Login'),
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
          body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Container(
                color: MunshiColor().munshiWhite,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: h * 0.24,
                      ),
                      child: Image.asset(
                        "assets/images/Logo.png",
                        fit: BoxFit.fill,
                        height: w * 0.4,
                        width: w * 0.4,
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
                            margin: EdgeInsets.only(
                                left: w * 0.03, right: w * 0.03),
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
                    InkWell(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          // doLogin();
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => OTP()));
                        }
                      },
                      child: state == 'loading'
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
                                  "Get an OTP",
                                  style: MunshiStyle().style24whitew600(),
                                ),
                              ),
                            ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.020),
                      child: RichText(
                        text: TextSpan(
                            text: 'Don\'t have an account?',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' Sign up',
                                  style: TextStyle(
                                      color: MunshiColor().munshiBlue,
                                      fontSize: 20),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => SignUp()));
                                    })
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
