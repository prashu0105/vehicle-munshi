import 'package:flutter/material.dart';
import 'package:vehicle_master/Comman%20components/TextStyle.dart';
import 'package:vehicle_master/Comman%20components/colors.dart';

class EditProfile extends StatefulWidget {
  EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  var h, w;
  var _formKey = GlobalKey<FormState>();
  TextEditingController name_controller = new TextEditingController();
  TextEditingController email_controller = new TextEditingController();
  TextEditingController phone_controller = new TextEditingController();
  TextEditingController address_controller = new TextEditingController();
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
        title: Text('Edit Profile'),
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
                      margin: EdgeInsets.only(left: w * 0.03, right: w * 0.03),
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
                      margin: EdgeInsets.only(left: w * 0.03, right: w * 0.03),
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
                      margin: EdgeInsets.only(left: w * 0.03, right: w * 0.03),
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
                      margin: EdgeInsets.only(left: w * 0.03, right: w * 0.03),
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
              InkWell(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pop(context);
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
                      "Submit",
                      style: MunshiStyle().style24whitew600(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}