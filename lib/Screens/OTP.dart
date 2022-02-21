import 'package:flutter/material.dart';
import 'package:vehicle_master/Comman%20components/TextStyle.dart';
import 'package:vehicle_master/Comman%20components/colors.dart';
import 'package:vehicle_master/Screens/Licensekey.dart';
import 'package:vehicle_master/Screens/login.dart';

class OTP extends StatefulWidget {
  OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  var h, w;
  var _formKey = GlobalKey<FormState>();
  TextEditingController otp_controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Login()));
          },
        ),
        backgroundColor: MunshiColor().munshiBlue,
        centerTitle: true,
        title: Text('Verify OTP'),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(top: h * 0.02, left: w * 0.08),
                    child: Text(
                      "Enter OTP",
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
                          Icons.verified_user_outlined,
                          color: MunshiColor().munshiBlue,
                        ),
                      ),
                      Container(
                        height: w * 0.1,
                        width: w * 0.7,
                        margin:
                            EdgeInsets.only(left: w * 0.03, right: w * 0.03),
                        child: TextFormField(
                          controller: otp_controller,
                          decoration: InputDecoration(
                            hintText: "Enter OTP",
                          ),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value!.length != 4)
                              return 'OTP must be of 4 digit';
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
                                builder: (context) => LicenceKey()));
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
                          "Verify",
                          style: MunshiStyle().style24whitew600(),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
