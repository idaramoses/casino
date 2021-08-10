import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:casino_app/values/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class Bonus extends StatefulWidget {
  @override
  _BonusState createState() => _BonusState();
}

class _BonusState extends State<Bonus> {
  final List<UserModel> _userlist = [
    UserModel(
        1,
        "888 Casino",
        "https://cdn.casinotopsonline.com/fit-in/80x80/logo-888casino.png",
        'Up to \$€200 + 25 FS',
        'https://www.casinotopsonline.com/go/visit-888casino'),
    UserModel(
        2,
        "VulkanVegas Casino",
        "https://cdn.casinotopsonline.com/fit-in/80x80/vulkan-vegas-casino-logo.jpeg",
        'Up to \$/€1000 + 125 FS + 50',
        'https://www.casinotopsonline.com/go/visit-vulkanvegascasino'),
    UserModel(
        3,
        "22BET",
        "https://cdn.casinotopsonline.com/fit-in/170x120/yyy-logo-1.png",
        '122% up to \$/€300 + 22',
        'https://www.casinotopsonline.com/go/visit-22bet'),
    UserModel(
        4,
        "Skol Casino",
        "https://cdn.casinotopsonline.com/fit-in/170x120/skol-casino-logo-1-1.jpeg",
        '100% up to €300 + 100 FS',
        'https://www.casinotopsonline.com/go/visit-skol_casino'),
    UserModel(
        5,
        "GG Bet",
        "https://cdn.casinotopsonline.com/fit-in/80x80/ggbet-3.jpeg",
        '100% up to \$/€400 + 175 FS',
        'https://www.casinotopsonline.com/go/visit-gg_bet'),
    UserModel(
        6,
        "Yaa Casino",
        "https://cdn.casinotopsonline.com/fit-in/80x80/yaacasino-icon.png",
        'Up to \$€200 + 25 FS',
        'https://www.casinotopsonline.com/go/visit-yaa_casino'),
    UserModel(
        7,
        "Mr Vegas",
        "https://cdn.casinotopsonline.com/fit-in/80x80/mr-vegas-icon.png",
        '100% up to \$/€200',
        'https://www.casinotopsonline.com/go/visit-mr_vegas_casino'),
    UserModel(
        8,
        "MegaSlot Casino",
        "https://cdn.casinotopsonline.com/fit-in/80x80/70jpg609789d2e2-original.jpeg",
        'Up to \$€200 + 25 FS',
        'https://www.casinotopsonline.com/go/visit-megaslot_casino'),
    UserModel(
        9,
        "20Bet",
        "https://cdn.casinotopsonline.com/fit-in/80x80/20-bet-casino-icon.png",
        'Up to \$€200 + 25',
        'https://www.casinotopsonline.com/go/visit-20bet'),
    UserModel(
        10,
        "1xslots",
        "https://cdn.casinotopsonline.com/fit-in/80x80/1x-icon.png",
        'Up to \$/€1650 + 150 FS',
        'https://www.casinotopsonline.com/go/visit-888casino'),
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 1080, height: 1920);
    return Scaffold(
      backgroundColor: Color(0xFFeaeaea),
      appBar: AppBar(
        title: Text('Bonus'),
      ),
        body: ListView(
          children: _userlist.map((user) => User(user)).toList(),
        ),
      
    );
  }
}
class User extends StatelessWidget {
  final UserModel _user;

  User(this._user);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => UserDetail(_user))),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(0),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Hero(
                  tag: "avatar_" + _user.id.toString(),
                  child: SizedBox(
                    height: ScreenUtil().setHeight(250),
                    width: ScreenUtil().setHeight(250),
                    child: CachedNetworkImage(
                      imageUrl: _user.avatar,
                      imageBuilder: (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.fitHeight,
                              colorFilter: ColorFilter.mode(
                                  Colors.transparent, BlendMode.colorBurn)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        _user.name,
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20,),
                      Row(
                        
                        children: [
                          Expanded(
                          flex: 4,
                            child: Text(
                              _user.bonus_code,
                              style: TextStyle(fontSize: 16,color: Colors.grey),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                children: [
                                  // Icon(Icons.arrow_downward, color: Colors.),
                                  
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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


class UserDetail extends StatelessWidget {
  final UserModel _user;

  UserDetail(this._user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_user.name),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Hero(
                tag: "avatar_" + _user.id.toString(),
                child: SizedBox(
                  height: ScreenUtil().setHeight(450),
                  child: CachedNetworkImage(
                    imageUrl: _user.avatar,
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: imageProvider,
                             fit: BoxFit.fitHeight,
                            colorFilter: ColorFilter.mode(
                                Colors.transparent, BlendMode.colorBurn)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              _user.name,
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Bonus',
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    _user.bonus_code,
                    style: const TextStyle(color: Colors.grey, fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            FlatButton(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Open Casino',
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
              color: Colors.green,
              textColor: Colors.black,
              onPressed: () {
                _launchURL();
              },
            ),
          ],
        ),
      ),
    );
  }

  _launchURL() async {
    const url = 'https://flutter.io';
    if (await canLaunch(url)) {
      await launch(_user.url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class UserModel {
  final int id;
  final String name;
  final String avatar;
  final String bonus_code;
  final String url;
  UserModel(this.id, this.name, this.avatar, this.bonus_code, this.url);
}
