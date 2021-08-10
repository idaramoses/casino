import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:casino_app/values/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class games extends StatefulWidget {
  @override
  _gamesState createState() => _gamesState();
}

class _gamesState extends State<games> {
  final List<UserModel> _userlist = [
    UserModel(
        1,
        "Couch Potato",
        "https://cdn.casinotopsonline.com/fit-in/300x240/couch-potato.png",
        'Couch Potato is a 3 reel, one payline slot by Microgaming that offers a more relaxed gaming experience compared to what you might be used to. This classic slot is perfect for those who just want to chill at the end of a long hard day at work, rather than being bombarded by loud sounds and bright flashy lights. But don\'t think this slot is boring or lacks win potential! The higher than average RTP is just one aspect of the 2015 game that keeps players coming back for more.'
            'Read on for a detailed look at Couch Potato, give the game a go for free, then start playing for real at one of our recommended online casinos!',
        'https://www.casinotopsonline.com/couch-potato-free-play'),
    UserModel(
        2,
        "Sun and Moon",
        "https://cdn.casinotopsonline.com/fit-in/300x240/sun-and-moon.png",
        'Sun and Moon is a 5 reel, 20 payline slot with an Aztec/Mayan design and gentle soundtrack that was launched in 2014 by Australian game developer Aristocrat. The slot offers simple gameplay that\'s perfect for beginners, with a setup that doesn\'t overcomplicate, while still offering excitement, win potential and unique characteristics. Not many slots offer two wild symbols that also serve as the feature-triggering scatters!'
            'Explore this game in detail with Sun and Moon Free Play demo mode and read on to discover more, including RTP, features and some tricks for playing!',
        'https://www.casinotopsonline.com/sun-and-moon-free-play'),
    UserModel(
        3,
        "Dark King: Forbidden Riches",
        "https://cdn.casinotopsonline.com/fit-in/300x240/dark-king-forbidden-riches.jpeg",
        'Released in November 2020, Dark King: Forbidden Riches is a dark, richly colored medieval slot. Fantasy fans and horror lovers alike will almost assuredly be drawn to this medium to high volatility slot. With its crisp graphics, sticky wild symbols, and fun free spins round, players can hardly fail to enjoy this NetEnt title.',
        'https://www.casinotopsonline.com/dark-king-forbidden-riches'),
    UserModel(
        4,
        "TwinSpin Megaways",
        "https://cdn.casinotopsonline.com/fit-in/300x240/twin-spin-megaways.jpeg",
        'The TwinSpin Megaways slot is NetEnt\'s update of their original TwinSpin game. TwinSpin deluxe didn\'t do well, but the Megaways format works well on this modern version of a classic. On a Megaways slot, the number of rows on each reel change with every spin, so reel 5 may have six rows while reel 2 only has three. The number of paylines varies with each spin, giving players a total of 117 649 ways of winning on this slot, instead of the 243 winning combinations on the original version. You are playing Twin Spin Megaways for FUN, check out the casinos below to play for real money.',
        'https://www.casinotopsonline.com/twin-spin-megaways'),
    UserModel(
        5,
        "Bonanza Megaways Slot",
        "https://cdn.casinotopsonline.com/fit-in/300x240/bonanza-288thumb.jpeg",
        'Bonanza Megaways is a 117,649 ways slot by Big Time Gaming that takes you on a fun mining adventure in search of valuable gems and gold. Forget paylines, this game pays out when you get 2 or more matching symbols on consecutive reels, with explosive effects from the game\'s dynamite wilds. The game offers the potential for chain reaction wins thanks to the win reactions effect that sees winning symbols disappearing to be replaced by more from above. But the biggest money comes from the free spins feature, in which the free spins keep on coming and those win reactions come with increasing multipliers!',
        'https://www.casinotopsonline.com/bonanza-megaways'),
    UserModel(
        6,
        "Money Train 2 Slot",
        "https://cdn.casinotopsonline.com/fit-in/300x240/money-train2-288thumb.jpeg",
        'Money Train 2 is a 40 payline slot game by Relax Gaming that features a steampunk meets cowboys style theme that\'s got a bit of a Mad Max thing going on! But it\'s not just the theme that will leave you wide-eyed. Two rich bonus features await you: the Respin Feature will have you hoping you don\'t win, while the Money Cart Bonus Round could turn 5 reels into 7 reels for massive payout potential! Take a closer look at what Money Train 2 has in store and see if it\'s worthy of your favourites list.',
        'https://www.casinotopsonline.com/money-train-2'),
    UserModel(
        7,
        "Big Bass Bonanza Slot",
        "https://cdn.casinotopsonline.com/fit-in/300x240/big-bass-bonanza.png",
        'Do you like fishing? If you answered yes, Pragmatic Play\'s new game, Big Bass Bonanza, will give you a new gaming experience, with lots of prizes to \"fish\". Are you ready to try this new game? Try the demo below for free.',
        'https://www.casinotopsonline.com/go/visit-mr_vegas_casino'),
    UserModel(
        8,
        "MegaSlot Casino",
        "https://cdn.casinotopsonline.com/fit-in/80x80/70jpg609789d2e2-original.jpeg",
        'John Hunter and the Mayan Gods has arrived and promises you huge winnings. Are you ready to discover this new game from Pragmatic Play? Check out the demo on our site to play for free.',
        'https://www.casinotopsonline.com/john-hunter-and-the-mayan-gods-free-play'),
    UserModel(
        9,
        "Spartan King Slot",
        "https://cdn.casinotopsonline.com/fit-in/300x240/spartan-king.jpeg",
        'The Spartans have landed on CasinoTopsOnline thanks to Pragmatic Play. Join them and get ready to fight an epic struggle for the conquest of a timeless treasure.',
        'https://www.casinotopsonline.com/spartan-king-free-play'),
    UserModel(
        10,
        "Christmas Carol Megaways Slot",
        "https://cdn.casinotopsonline.com/fit-in/300x240/christmas-carol-thumbs.png",
        'Pragmatic Play has launched Christmas Carol, the new slot machine that will make you live a perfect christmas atmosphere. You\'ll find all the characters in the story, including rich prizes to win and lots of great surprises.',
        'https://www.casinotopsonline.com/christmas-carol-megaways-free-play'),
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 1080, height: 1920);
    return Scaffold(
      backgroundColor: Color(0xFFeaeaea),
      appBar: AppBar(
        title: Text('Games'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        shrinkWrap: true,
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
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => UserDetail(_user))),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Hero(
                    tag: "avatar_" + _user.id.toString(),
                    child: SizedBox(
                      height: ScreenUtil().setHeight(260),
                      child: CachedNetworkImage(
                        imageUrl: _user.avatar,
                        imageBuilder: (context, imageProvider) => Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.fitWidth,
                                colorFilter: ColorFilter.mode(
                                    Colors.transparent, BlendMode.colorBurn)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      _user.name,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
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
      body: SingleChildScrollView(
        child: Center(
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
                              fit: BoxFit.fitWidth,
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
                    'Play Game',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
                color: Colors.red,
                textColor: Colors.black,
                onPressed: () {
                  _launchURL();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  _launchURL() async {
    const url = 'https://flutter.dev';
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
