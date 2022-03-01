import 'package:flutter/material.dart';
import 'package:vehicle_master/Comman%20components/TextStyle.dart';
import 'package:vehicle_master/Comman%20components/colors.dart';
import 'package:vehicle_master/Screens/Package.dart';
import 'package:vehicle_master/Screens/signup.dart';

class AddCompanyDetails extends StatefulWidget {
  AddCompanyDetails({Key? key}) : super(key: key);

  @override
  State<AddCompanyDetails> createState() => _AddCompanyDetailsState();
}

class _AddCompanyDetailsState extends State<AddCompanyDetails> {
  var h, w;
  var _formKey = GlobalKey<FormState>();
  TextEditingController companyname_controller = new TextEditingController();
  TextEditingController companyaddress_controller = new TextEditingController();
  TextEditingController gst_controller = new TextEditingController();
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
                context, MaterialPageRoute(builder: (context) => SignUp()));
          },
        ),
        backgroundColor: MunshiColor().munshiBlue,
        centerTitle: true,
        title: Text('Add Company Details'),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            height: h * 0.9,
            width: w,
            color: MunshiColor().munshiCreme,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: w * 0.04, top: h * 0.02),
                  child: Text("Company Details",
                      style: MunshiStyle().style24blackw600()),
                ),
                Container(
                  height: h * 0.3,
                  width: w * 0.9,
                  color: MunshiColor().munshiWhite,
                  margin: EdgeInsets.only(
                      left: w * 0.05, right: w * 0.05, top: h * 0.02),
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
                                Icons.contacts_outlined,
                                color: MunshiColor().munshiBlue,
                              ),
                            ),
                            Container(
                              height: w * 0.1,
                              width: w * 0.64,
                              margin: EdgeInsets.only(
                                  left: w * 0.03, right: w * 0.03),
                              child: TextFormField(
                                controller: companyname_controller,
                                decoration: InputDecoration(
                                  hintText: "Enter Company Name",
                                ),
                                keyboardType: TextInputType.streetAddress,
                                validator: (value) {
                                  if (value!.isEmpty)
                                    return 'Company Name is required';
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
                              width: w * 0.64,
                              margin: EdgeInsets.only(
                                  left: w * 0.03, right: w * 0.03),
                              child: TextFormField(
                                controller: companyaddress_controller,
                                decoration: InputDecoration(
                                  hintText: "Enter Company Address",
                                ),
                                keyboardType: TextInputType.streetAddress,
                                validator: (value) {
                                  if (value!.isEmpty)
                                    return 'Company Address is required';
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
                              width: w * 0.64,
                              margin: EdgeInsets.only(
                                  left: w * 0.03, right: w * 0.03),
                              child: TextFormField(
                                controller: gst_controller,
                                decoration: InputDecoration(
                                  hintText: "Enter GST Number",
                                ),
                                keyboardType: TextInputType.streetAddress,
                                validator: (value) {
                                  if (value!.isEmpty)
                                    return 'GST Number is required';
                                  else
                                    return null;
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: w * 0.04, top: h * 0.02),
                  child: Text("Upload Documents",
                      style: MunshiStyle().style24blackw600()),
                ),
                Container(
                  height: h * 0.28,
                  width: w * 0.9,
                  color: MunshiColor().munshiWhite,
                  margin: EdgeInsets.only(
                      left: w * 0.05, right: w * 0.05, top: h * 0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: w * 0.04, top: h * 0.02),
                        child: Text("GST Certificate :",
                            style: MunshiStyle().style16blackw400()),
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Package()));
                            }
                          },
                          child: Container(
                            height: h * 0.05,
                            width: w * 0.7,
                            margin: EdgeInsets.only(top: h * 0.02),
                            decoration: BoxDecoration(
                              color: MunshiColor().munshiBlue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            child: Center(
                              child: Text(
                                "Attach",
                                style: MunshiStyle().style16whitew400(),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: w * 0.04, top: h * 0.02),
                        child: Text("PAN /TIN Card:",
                            style: MunshiStyle().style16blackw400()),
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            // if (_formKey.currentState!.validate()) {
                            //   Navigator.push(context,
                            //       MaterialPageRoute(builder: (context) => Login()));
                            // }
                          },
                          child: Container(
                            height: h * 0.05,
                            width: w * 0.7,
                            margin: EdgeInsets.only(top: h * 0.02),
                            decoration: BoxDecoration(
                              color: MunshiColor().munshiBlue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            child: Center(
                              child: Text(
                                "Attach",
                                style: MunshiStyle().style16whitew400(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      // if (_formKey.currentState!.validate()) {
                      //   Navigator.push(context,
                      //       MaterialPageRoute(builder: (context) => Login()));
                      // }
                    },
                    child: Container(
                      height: h * 0.06,
                      width: w * 0.8,
                      margin: EdgeInsets.only(top: h * 0.03),
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
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Package()));
                      }
                    },
                    child: Container(
                      height: h * 0.06,
                      width: w * 0.8,
                      margin: EdgeInsets.only(top: h * 0.01),
                      decoration: BoxDecoration(
                        color: MunshiColor().munshiBlue,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Center(
                        child: Text(
                          "Reset",
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
