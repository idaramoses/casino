import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class ViewScreen extends StatefulWidget {

  @override
  _ViewScreenState createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();


  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace,
          ),
          onPressed: ()=>Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text(
          "Casino Dash", 
        ),
        elevation: 0.0,
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0,0,10.0,0),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10.0),
            Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  height: MediaQuery.of(context).size.height / 3.6,
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: CachedNetworkImage(
                      placeholder: (context, url) =>
                          Image.asset(
                            'assets/images/loading.gif',
                            fit: BoxFit.cover,
                          ),
                      imageUrl: "https://i.hurimg.com/i/hdn/75/0x0/5a689ef82269a21ae871e3c8.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.0),

            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(child: Text( "Casino Dash" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),maxLines: 2, overflow: TextOverflow.ellipsis,)),

              ],
            ),

            SizedBox(height: 15,),


            Text(
              "Casino is of Italian origin; the root casa means a house. The term casino may mean a small country villa, summerhouse, or social club.[1] During the 19th century, casino came to include other public buildings where pleasurable activities took place; such edifices were usually built on the grounds of a larger Italian villa or palazzo, and were used to host civic town functions, including dancing, gambling, music listening, and sports. Examples in Italy include Villa Farnese and Villa Giulia, and in the US the Newport Casino in Newport, Rhode Island. In modern-day Italian, a casino is a brothel (also called casa chiusa, literally a mess (confusing situation), or a noisy environment a gaming house is spelt casinò, with an accent",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              maxLines: 10,
            ),
            SizedBox(height: 10.0),



            SizedBox(height: 10.0),
          ],
        ),
      ),



      bottomNavigationBar: Container(
        height: 50.0,
        child: Text(
              "Play",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
        ),
    );
  }


}