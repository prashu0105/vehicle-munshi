import 'package:flutter/material.dart';
import 'package:vehicle_master/Comman%20components/TextStyle.dart';
import 'package:vehicle_master/Comman%20components/colors.dart';
import 'package:vehicle_master/Screens/EditProfile.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: MunshiColor().munshiBlue,
        centerTitle: true,
        title: Text('Profile Details'),
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
              height: h * 0.4,
              width: w * 0.9,
              color: MunshiColor().munshiWhite,
              margin: EdgeInsets.only(
                  left: w * 0.05, right: w * 0.05, top: h * 0.02),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.1,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name :",
                        style: MunshiStyle().style16bluew400(),
                      ),
                      Text(
                        "Email :",
                        style: MunshiStyle().style16bluew400(),
                      ),
                      Text(
                        "Mobile No. :",
                        style: MunshiStyle().style16bluew400(),
                      ),
                      Text(
                        "Address :",
                        style: MunshiStyle().style16bluew400(),
                      ),
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
                        width: w * 0.48,
                        child: Text(
                          "John Milke",
                          overflow: TextOverflow.ellipsis,
                          style: MunshiStyle().style16blackw400(),
                        ),
                      ),
                      Container(
                        width: w * 0.48,
                        // color: Colors.red,
                        child: Text(
                          "JohnMilke@gmail.com",
                          overflow: TextOverflow.ellipsis,
                          style: MunshiStyle().style16blackw400(),
                        ),
                      ),
                      Container(
                        width: w * 0.48,
                        child: Text(
                          "1234567890",
                          overflow: TextOverflow.ellipsis,
                          style: MunshiStyle().style16blackw400(),
                        ),
                      ),
                      Container(
                        width: w * 0.48,
                        child: Text(
                          "B-46 laxmi Nagar",
                          overflow: TextOverflow.ellipsis,
                          style: MunshiStyle().style16blackw400(),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EditProfile()));
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
