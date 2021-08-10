import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:casino_app/values/colors.dart';

class account extends StatefulWidget {
  @override
  _accountState createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 1080, height: 1920);
    return Scaffold(
      backgroundColor: Color(0xFFeaeaea),
      appBar: AppBar(
        title: Text('About'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              SizedBox(
              height: ScreenUtil().setHeight(100),
            ),
                   Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child:
                 Text(
                  'About Top Casino',
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
             SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                child:
                 Text(
                  'We are vibrant and multicultural team of experts with a love for gambling. Our passion and casino industry knowledge is what has allowed us to provide gamblers with safe, reliable and in-depth casino reviews since 2011. Starting out a small team, we have stuck together over the years and shared our wisdom and skills with each other in order to grow Top Casino into the respected brand that it is today.',
                  style: TextStyle(),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
             Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                child:
                 Text(
                  'We know that navigating the internet in search of the perfect online casino is quite the challenge. This is where we come in; we have years of experience playing and reviewing online casinos between us. Our goal is to weed out the bad brands from the good eggs and only serve our players the best online casinos based on your location.',
                  style: TextStyle(),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                child:
                 Text(
                  'We know that navigating the internet in search of the perfect online casino is quite the challenge. This is where we come in; we have years of experience playing and reviewing online casinos between us. Our goal is to weed out the bad brands from the good eggs and only serve our players the best online casinos based on your location.',
                  style: TextStyle(),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                child:
                 Text(
                  'We currently operate in 10 different languages. In order to make this possible, we needed to create a culturally diverse team. Our dedicated country managers are in charge of providing you with their market-specific information and intel.\nOur team might be small, but we know that strength is not in numbers but in diversity. Every member of our team brings their own skills and assets to the table which has led to the success of Top Casino. We all come from very different backgrounds; some of us worked in journalism and some of us came from as far as the music industry. We truly are a unique bunch.',
                  style: TextStyle(),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(100),
            ),
          ],
        ),
      ),
    );
  }
}
