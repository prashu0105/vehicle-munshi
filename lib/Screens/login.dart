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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => OTP()));
                        }
                      },
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
