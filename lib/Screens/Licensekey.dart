import 'package:flutter/material.dart';
import 'package:vehicle_master/Comman%20components/TextStyle.dart';
import 'package:vehicle_master/Comman%20components/colors.dart';
import 'package:vehicle_master/Screens/Home.dart';
import 'package:vehicle_master/Screens/OTP.dart';

class LicenceKey extends StatefulWidget {
  LicenceKey({Key? key}) : super(key: key);

  @override
  State<LicenceKey> createState() => _LicenceKeyState();
}

class _LicenceKeyState extends State<LicenceKey> {
  var h, w;
  TextEditingController key_controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    var _formKey = GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => OTP()));
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
          child: Container(
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: h * 0.02, left: w * 0.08),
                    child: Text(
                      "Enter Licence Key",
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
                          controller: key_controller,
                          decoration: InputDecoration(
                            hintText: "Enter Licence key",
                          ),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value!.length != 10)
                              return 'Licence key must be of 10 digit';
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
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
                          "Submits",
                          style: MunshiStyle().style24whitew600(),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
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
                          "Login Without Licence",
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
