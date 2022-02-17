import 'package:flutter/material.dart';
import 'package:vehicle_master/Comman%20components/TextStyle.dart';
import 'package:vehicle_master/Comman%20components/colors.dart';
import 'package:vehicle_master/Screens/EditCompanyDetails.dart';

class CompanyDetails extends StatefulWidget {
  CompanyDetails({Key? key}) : super(key: key);

  @override
  State<CompanyDetails> createState() => _CompanyDetailsState();
}

class _CompanyDetailsState extends State<CompanyDetails> {
  var h, w;
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
        title: Text('Company Details'),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
      ),
      body: Container(
        height: h,
        width: w,
        color: MunshiColor().munshiCreme,
        child: Column(
          children: [
            Container(
              height: h * 0.3,
              width: w * 0.9,
              color: MunshiColor().munshiWhite,
              margin: EdgeInsets.only(
                  left: w * 0.05, right: w * 0.05, top: h * 0.02),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.08,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Company Name :",
                        style: MunshiStyle().style16bluew400(),
                      ),
                      Text(
                        "Company Address :",
                        style: MunshiStyle().style16bluew400(),
                      ),
                      Text(
                        "GST No. :",
                        style: MunshiStyle().style16bluew400(),
                      ),
                      // Text(
                      //   "Address :",
                      //   style: MunshiStyle().style16bluew400(),
                      // ),
                    ],
                  ),
                  SizedBox(
                    width: w * 0.05,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: w * 0.3,
                        child: Text(
                          "Honda",
                          overflow: TextOverflow.ellipsis,
                          style: MunshiStyle().style16blackw400(),
                        ),
                      ),
                      Container(
                        width: w * 0.3,
                        // color: Colors.red,
                        child: Text(
                          "123 ABCD",
                          overflow: TextOverflow.ellipsis,
                          style: MunshiStyle().style16blackw400(),
                        ),
                      ),
                      Container(
                        width: w * 0.3,
                        child: Text(
                          "1234567890",
                          overflow: TextOverflow.ellipsis,
                          style: MunshiStyle().style16blackw400(),
                        ),
                      ),
                      // Container(
                      //   width: w * 0.48,
                      //   child: Text(
                      //     "B-46 laxmi Nagar",
                      //     overflow: TextOverflow.ellipsis,
                      //     style: MunshiStyle().style16blackw400(),
                      //   ),
                      // ),
                    ],
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditCompanyDetails()));
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
                    "Edit",
                    style: MunshiStyle().style24whitew600(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
