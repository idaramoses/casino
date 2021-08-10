import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:casino_app/values/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class Top10 extends StatefulWidget {
  @override
  _Top10State createState() => _Top10State();
}

class _Top10State extends State<Top10> {
  final List<UserModel> _userlist = [
    UserModel(
        1,
        "888 Casino",
        "https://cdn.casinotopsonline.com/fit-in/80x80/logo-888casino.png",
        'Up to \$€200 + 25 FS',
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        '888 Casino is without a doubt one of the biggest online casinos and it’s been around for over 20 years. In our opinion, it offers a top-class experience to all players, both new and experienced. The site is licensed in many countries and is even available in the USA! It’s a well-respected platform that leads the way for many other online casinos to follow. There are so many positive aspects to this site that we struggled to fit them all into this detailed review! First things first you are welcomed in with a big no-deposit sign up bonus. These are tricky to find these days and after that, you’ll be able to then claim a full welcome offer too. To visit the casino simply click on the button below and get your 888 experience on its way!',
        'https://www.casinotopsonline.com/go/visit-888casino'),
    UserModel(
        2,
        "VulkanVegas Casino",
        "https://cdn.casinotopsonline.com/fit-in/80x80/vulkan-vegas-casino-logo.jpeg",
        'Up to \$/€1000 + 125 FS + 50',
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        'In our opinion, Vulkan Vegas Casino has a lot to offer for new players, its exclusive no deposit bonus provides the perfect opportunity for anyone wishing to start playing without any commitment. In addition, it also hosts one of the largest gaming libraries so there truly is a game that suits everyone’s taste. We’ve written a detailed casino review so that you can find out all there is to know about Vulkan Vegas. Alternatively, if you wish to visit the casino, simply click on the ‘Visit’ button below.',
        'https://www.casinotopsonline.com/go/visit-vulkanvegascasino'),
    UserModel(
        3,
        "Stay Casino",
        "https://cdn.casinotopsonline.com/fit-in/309x218/stay-casino-logo.jpeg",
        '122% up to \$/€300 + 22',
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        'There is little doubt that you’ll want to stay at this online casino once you have visited it for the first time. We checked it out and found that it has so much to offer to players – we didn’t want to leave ourselves! Fortunately, we decided upon creating this review for you to learn more about what Stay Casino has to offer up. The site has only been opened in 2021, so it is a very new platform to join. However, it comes from the Hollycorn N.V. brand, which is a company registered and established under the official laws of Curacao. From there, the casino also possesses a gambling licence to allow it to operate.',
        'https://www.casinotopsonline.com/go/visit-stay'),
    UserModel(
        4,
        "BetRegal",
        "https://cdn.casinotopsonline.com/fit-in/309x218/betregal-logo-340x240.png",
        '100% up to \$/€500',
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.grey),
        'BetRegal hosts a massive games lobby offering its players a wide variety of slots, table games, live casino games, virtual sports and even sports betting on real matches. Player loyalty is rewarded through BetRegal\'s Exclusive Loyalty Club where you can level up between tiers and benefit from all the perks of each Loyalty status. For more information, scroll down to read the full BetRegal casino review or click on the bonus to start playing.',
        'https://www.casinotopsonline.com/go/visit-betregal'),
    UserModel(
        5,
        "Wild Tokyo",
        "https://cdn.casinotopsonline.com/fit-in/309x218/wild-tokyo-logo.png",
        '100% up to \$/€400 + 175 FS',
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.grey),
        'Wild Tokyo Casino comes with a futuristic theme committing to providing its players "a rewarding and immersive" experience. Players can look forward to frequent tournaments and weekly bonuses as well as a unique loyalty programme. Scroll down below to read the full casino review or click on the bonus offer to start playing.',
        'https://www.casinotopsonline.com/go/visit-wild_tokyo'),
    UserModel(
        6,
        "Yaa Casino",
        "https://cdn.casinotopsonline.com/fit-in/80x80/yaacasino-icon.png",
        'Up to \$€200 + 25 FS',
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.grey),
        'YaaCasino is a Curacao licensed platform, making it an ideal site for players from all around the world to join. It’s developed by a team of online gambling experts who have many years of combined knowledge in the industry. In our opinion, we think the casino has a lot to offer players in terms of bonuses and a huge game choice. But there are many other fantastic things about Yaa, and you can read all about them in this full review. You can also take a trip to the casino by hitting the ‘Visit’ button below. YaaCasino is the place to be if you like a straightforward gambling experience. Where there are no fussy terms and conditions, and promotions are in abundance. There’s a tip-top welcome offer waiting for new players as well as daily real money cashback on all losses. Yaa collaborates with the biggest and best software providers in the business, to bring you a game catalogue made up of over 2,000 titles. These focus on slots, scratchcards, bingo, table games and a bustling live casino. ',
        'https://www.casinotopsonline.com/go/visit-yaa_casino'),
    UserModel(
        7,
        "Mr Vegas",
        "https://cdn.casinotopsonline.com/fit-in/80x80/mr-vegas-icon.png",
        '100% up to \$/€200',
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.grey),
        Icon(Icons.star, color: Colors.grey),
        'Mr Vegas is new in town, and he\'s got a great casino full of amazing deals and bonuses for you! We\'ve got an upcoming review telling you everything you need to know about this new casino, so keep checking back to read it in future!',
        'https://www.casinotopsonline.com/go/visit-mr_vegas_casino'),
    UserModel(
        8,
        "MegaSlot Casino",
        "https://cdn.casinotopsonline.com/fit-in/80x80/70jpg609789d2e2-original.jpeg",
        'Up to \$€200 + 25 FS',
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.grey),
        Icon(Icons.star, color: Colors.grey),
        'This brand new casino offers a huge variety of games and live casino for its players, as well as great customer support and fast withdrawals. Check out our full review below!',
        'https://www.casinotopsonline.com/go/visit-megaslot_casino'),
    UserModel(
        9,
        "SlotBox Casino ",
        "https://cdn.casinotopsonline.com/fit-in/309x218/slotbox-casino-logo-1.png",
        'Up to \$€200 + 25',
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.grey),
        'SlotBox Casino is an exciting new online gaming concept delivered by the innovative GiG (Gaming Innovation Group). They have been in the online entertainment industry since 2021. It features a colossal gaming catalogue of over 600 games from Microgaming.',
        'https://www.casinotopsonline.com/go/visit-slotbox'),
    UserModel(
        10,
        "7Bit Casino ",
        "https://cdn.casinotopsonline.com/fit-in/309x218/7-bit-casinojpgff6d6c910d-original.jpeg",
        'Up to \$/€1650 + 150 FS',
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.grey),
        Icon(Icons.star, color: Colors.grey),
        'We’ve had a look at 7Bit Casino to give you a better idea of what to expect. We loved that this casino offers cryptocurrency like Bitcoin. 7Bit Casino takes a new-aged approach to gambling but has a very cool retro feel that makes you feel like you’re still playing in the arcades like those you played when you were younger.',
        'https://www.casinotopsonline.com/go/visit-7bit'),
    //  UserModel(
    // 15,
    // "Spin Rio ",
    // "https://cdn.casinotopsonline.com/fit-in/309x218/spin-rio-logo.jpeg",
    // 'Up to \$/€1650 + 150 FS',
    //  Icon(Icons.star, color: Colors.yellow),
    //     Icon(Icons.star, color: Colors.yellow),
    //     Icon(Icons.star, color: Colors.yellow),
    //     Icon(Icons.star, color: Colors.grey),
    //     Icon(Icons.star, color: Colors.grey),
    //  'Claiming to be ‘Bigger than Europe, Wilder than Africa’, Spin Rio Casino is committed to transporting players to Brazil. With plenty of games, exclusive promotions and a 7-tier VIP Programme, La Fiesta doesn’t stop! Samba your way to Spin Rio ',
    // 'https://www.casinotopsonline.com/go/visit-spinrio'), UserModel(
    // 11,
    // "Amazon Slots ",
    // "https://cdn.casinotopsonline.com/fit-in/309x218/amazon-slots.png",
    // 'Up to \$/€1650 + 150 FS',
    //  Icon(Icons.star, color: Colors.yellow),
    //     Icon(Icons.star, color: Colors.yellow),
    //     Icon(Icons.star, color: Colors.yellow),
    //     Icon(Icons.star, color: Colors.grey),
    //     Icon(Icons.star, color: Colors.grey),
    //  'Our in-depth review of Amazon Slots Casino revealed a site that\'s set on doing things its own way, starting with a unique welcome offer that avoids bonuses and instead opts for a shot at free spins or even Amazon vouchers via what they call the Mega Reel. This approach seems to be a winner with fans of slots, especially as it\'s continued in the site\'s various other promotions. Our UK-based players tell us that the decent collection of games from various well-known providers combined with the huge variety of offers and a trophy-based loyalty programme is what keeps them playing here, with the responsively designed website allowing gameplay on all devices without the need for additional download. Though this online casino doesn\'t get everything right, it has ticked enough boxes to become number one on the list for many players.',
    // 'https://www.casinotopsonline.com/go/visit-amazon_slots'), UserModel(
    // 12,
    // "Spinurai ",
    // "https://cdn.casinotopsonline.com/fit-in/170x120/spinurai-logo.jpeg",
    // 'Up to \$/€1650 + 150 FS',
    //  Icon(Icons.star, color: Colors.yellow),
    //     Icon(Icons.star, color: Colors.yellow),
    //     Icon(Icons.star, color: Colors.yellow),
    //     Icon(Icons.star, color: Colors.grey),
    //     Icon(Icons.star, color: Colors.grey),
    //  'Praise Casino hasn\'t been on the scene long but it\'s already attracted a large following thanks to an attractive welcome package, large games collection and unique and rewarding loyalty programme. Players from a variety of countries are singing its praises, so we took a closer look to find out why. Read on for all the details on Praise Casino, including its bonuses, games and loyalty rewards.',
    // 'https://www.casinotopsonline.com/go/visit-praise_casino'), UserModel(
    // 13,
    // "Stakes ",
    // "https://cdn.casinotopsonline.com/fit-in/309x218/stakes-casino-logo.jpeg",
    // 'Up to \$/€1650 + 150 FS',
    //  Icon(Icons.star, color: Colors.yellow),
    //     Icon(Icons.star, color: Colors.yellow),
    //     Icon(Icons.star, color: Colors.yellow),
    //     Icon(Icons.star, color: Colors.grey),
    //     Icon(Icons.star, color: Colors.grey),
    //  'In our view, Stakes Casino has lots in store for new players, starting with an attractive welcome bonus that includes free spins. There\'s also a large number of games to explore with a different reward available to claim for every day of the week. One of the biggest pulls of this online casino is the fact that you can withdraw your winnings without having to clear your bonus first, which is a game-changer. Read on for a detailed look at Stakes Casino to see why this is a top choice with savvy gamers.',
    // 'https://www.casinotopsonline.com/go/visit-stakes'), UserModel(
    // 14,
    // "Aurum Palace  ",
    // "https://cdn.casinotopsonline.com/fit-in/309x218/aurum-palace-logo.png",
    // 'Up to \$/€1650 + 150 FS',
    //  Icon(Icons.star, color: Colors.yellow),
    //     Icon(Icons.star, color: Colors.yellow),
    //     Icon(Icons.star, color: Colors.yellow),
    //     Icon(Icons.star, color: Colors.grey),
    //     Icon(Icons.star, color: Colors.grey),
    //  'From our point of view, Aurum Palace offers a very exciting experience for casino lovers from all backgrounds. The user interface is very simple and ease of use is notable, especially for new players. Experienced bettors will appreciate it too. To attract new players and keep current ones entertained and coming back for more, Aurum Palace offers them a host of games that are supported by plentiful bonuses and many in-game incentives.',
    // 'https://www.casinotopsonline.com/go/visit-aurum_palace'),
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 1080, height: 1920);
    return Scaffold(
      backgroundColor: Color(0xFFeaeaea),
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
    return SingleChildScrollView(
      child: Padding(
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
                                fit: BoxFit.fitWidth,
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
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Text(
                                'casinio',
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  children: [
                                    _user.s1,
                                    _user.s2,
                                    _user.s3,
                                    _user.s4,
                                    _user.s5,
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
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _user.s1,
                      _user.s2,
                      _user.s3,
                      _user.s4,
                      _user.s5,
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(30),
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
                      _user.deatails,
                      style:
                          const TextStyle(color: Colors.blueGrey, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil().setHeight(20),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  _user.Top10_code,
                  style: const TextStyle(color: Colors.grey, fontSize: 18),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(20),
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
              SizedBox(
                height: ScreenUtil().setHeight(50),
              ),
            ],
          ),
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
  final Widget s1;
  final Widget s2;
  final Widget s3;
  final Widget s4;
  final Widget s5;
  final String Top10_code;

  final String deatails;
  final String url;

  UserModel(
    this.id,
    this.name,
    this.avatar,
    this.deatails,
    this.s1,
    this.s2,
    this.s3,
    this.s4,
    this.s5,
    this.Top10_code,
    this.url,
  );
}
