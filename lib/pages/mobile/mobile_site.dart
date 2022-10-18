import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:iconsax/iconsax.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../views/hoverButton.dart';

class MobileSite extends StatefulWidget {
  const MobileSite({Key? key}) : super(key: key);

  @override
  State<MobileSite> createState() => _MobileSiteState();
}

class _MobileSiteState extends State<MobileSite> {
  final itemKey = GlobalKey();
  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final contactKey = GlobalKey();

  final Uri _telegram = Uri.parse('https://t.me/Xurshid_Ali');
  final Uri _in = Uri.parse('https://www.linkedin.com/in/xurshid-yusuvaliyev-8b228b244/');
  final Uri _instagram = Uri.parse('https://www.instagram.com/xurshid_yusuvaliyev/');
  final Uri _pinterest = Uri.parse('https://github.com/xurshid20222/my_pinterest_app');
  final Uri _car = Uri.parse('https://github.com/xurshid20222/CarApp');
  final Uri _shop = Uri.parse('https://github.com/xurshid20222/PDP-Bazar');


  // scroll item
  Future scrollToItem() async{
    final context = itemKey.currentContext!;
    await Scrollable.ensureVisible(
      context,
      alignment: .1,
      duration: const Duration(milliseconds: 10),
    );
    if(mounted) Navigator.pop(context);
  }

  Future scrollToItemPortfolio() async{
    final context = itemKey.currentContext!;
    await Scrollable.ensureVisible(
      context,
      alignment: .1,
      duration: const Duration(milliseconds: 1000),
    );
  }

  Future scrollToHome() async{
    final context = homeKey.currentContext!;
    await Scrollable.ensureVisible(
      context,
      alignment: .1,
      duration: const Duration(milliseconds: 10),
    );
    if(mounted) Navigator.pop(context);
  }

  Future scrollToAbout() async{
    final context = aboutKey.currentContext!;
    await Scrollable.ensureVisible(
      context,
      alignment: .3,
      duration: const Duration(milliseconds: 10),
    );
    if(mounted) Navigator.pop(context);
  }

  Future scrollToContact() async{
    final context = contactKey.currentContext!;
    await Scrollable.ensureVisible(
      context,
      alignment: .1,
      duration: const Duration(milliseconds: 10),
    );
    if(mounted) Navigator.pop(context);
  }


  Future<void> _launchUrlPinterest() async {
    if (!await launchUrl(_pinterest)) {
      throw 'Could not launch $_pinterest';
    }
  }

  Future<void> _launchUrlCar() async {
    if (!await launchUrl(_car)) {
      throw 'Could not launch $_car';
    }
  }

  Future<void> _launchUrlShop() async {
    if (!await launchUrl(_shop)) {
      throw 'Could not launch $_shop';
    }
  }

  Future<void> _launchUrlTelegram() async {
    if (!await launchUrl(_telegram)) {
      throw 'Could not launch $_telegram';
    }
  }

  Future<void> _launchUrlInstagram() async {
    if (!await launchUrl(_instagram)) {
      throw 'Could not launch $_instagram';
    }
  }

  Future<void> _launchUrlIn() async {
    if (!await launchUrl(_in)) {
      throw 'Could not launch $_in';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(
        backgroundColor: Colors.black,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OnHoverButton(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white),
                onPressed: scrollToHome,
                child: const Text(
                  'HOME',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            OnHoverButton(
              child: OutlinedButton(

                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white),
                onPressed: scrollToItem,
                child: const Text(
                  'PROJECTS',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            OnHoverButton(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white),
                onPressed: scrollToAbout,
                child: const Text(
                  'ABOUT',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            OnHoverButton(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white),
                onPressed: scrollToContact,
                child: const Text(
                  'CONTACT',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        //#name
        title: RichText(
          text: const TextSpan(
            text: 'K',
            style: TextStyle(
                color: Color(0xFF00ff00),
                fontWeight: FontWeight.w600,
                fontSize: 25,
                letterSpacing: 1.5),
            children: <TextSpan>[
              TextSpan(
                  text: 'hurshidjon',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 25,
                      letterSpacing: 1.5)),
              TextSpan(
                text: ' Y',
                style: TextStyle(
                    color: Color(0xFF00ff00),
                    fontWeight: FontWeight.w600,
                    fontSize: 25),
              ),
              TextSpan(
                  text: 'usuvaliyev',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 25)),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //#image
            itemIndex(
              Stack(
                key: homeKey,
                alignment: Alignment.bottomLeft,
                children: [
                  const SizedBox(
                    height: 550,
                    width: double.infinity,
                    child: Image(
                      image: AssetImage(
                        'assets/images/coding.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 170, left: 100),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Flutter Developer',
                          textStyle: const TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          speed: const Duration(milliseconds: 200),
                        ),
                      ],
                      totalRepeatCount: 1,
                      pause: const Duration(milliseconds: 1000),
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 200, bottom: 130),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Khurshidjon Yusuvaliyev',
                          textStyle: const TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF00ff00),
                          ),
                          speed: const Duration(milliseconds: 200),
                        ),
                      ],
                      totalRepeatCount: 1,
                      pause: const Duration(milliseconds: 1000),
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 100, bottom: 50),
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border:
                        Border.all(color: const Color(0xFF00ff00), width: 2)),
                    child: ElevatedButton(
                        onPressed: scrollToItemPortfolio,
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: const Text(
                          'PORTFOLIO',
                          style: TextStyle(
                            color: Color(0xFF00ff00),
                            fontSize: 12,
                          ),
                        )),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 100,
            ),
            ///
            itemIndex(
              RichText(
                key: itemKey,
                text: const TextSpan(children: [
                  TextSpan(
                    text: 'MY ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5),
                  ),
                  TextSpan(
                    text: 'PROJECTS',
                    style: TextStyle(
                        color: Color(0xFF00ff00),
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5),
                  )
                ]),
              ),
            ),
            const SizedBox(height: 20),

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 400,
                  width: 400,
                  padding: const EdgeInsets.only(left: 20),
                  color: Colors.blueGrey.shade900,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Pinterest App Clone',
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 25,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.5),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Description:',
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.5),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'This project strengthened my knowledge of working with Rest API and it is surely responsive for Web, Tablet and Mobile screens.',
                        style: TextStyle(
                            color: Colors.white60,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.5),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  width: 400,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.shade900,
                  ),
                  child: OnHoverButton(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade600,
                        image: const DecorationImage(
                          image: AssetImage('assets/images/pin.png'),
                        ),
                      ),
                      child: OutlinedButton(
                        onPressed: _launchUrlPinterest,
                        child: const SizedBox.shrink(),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.blueGrey.shade900,
                  height: 400,
                  width: 400,
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Car App',
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 25,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.5),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Description:',
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 28,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.5),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        'The App widely used the features of Firebase technology.',
                        style: TextStyle(
                            color: Colors.white60,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.5),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  height: 400,
                  width: 400,
                  child: OnHoverButton(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade600,
                        image: const DecorationImage(
                          image: AssetImage('assets/images/car.png'),
                        ),
                      ),
                      child: OutlinedButton(
                        onPressed: _launchUrlCar,
                        child: const SizedBox.shrink(),
                      ),
                    ),
                  ),
                ),

              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 400,
                    width: 400,
                    color: Colors.blueGrey.shade900,
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Shop App',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 25,
                              fontWeight: FontWeight.w300,
                              letterSpacing: 0.5),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Description:',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 28,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          'The state management of Provider was used in this project',
                          style: TextStyle(
                              color: Colors.white60,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    )),
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  height: 400,
                  width: 400,
                  child: OnHoverButton(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade600,
                        image: const DecorationImage(
                          image: AssetImage('assets/images/e.png'),
                        ),),
                      child: OutlinedButton(
                        onPressed: _launchUrlShop,
                        child: const SizedBox.shrink(),
                      ),
                    ),

                  ),
                ),
              ],
            ),

            //#aboutMe
            const SizedBox(
              height: 200,
            ),
            itemIndex(
              Column(
                key: aboutKey,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Transform.translate(
                    offset: const Offset(0, -22),
                    child: Container(
                      margin: const EdgeInsets.only(left: 40),
                      child: RichText(
                        text: const TextSpan(
                            style: TextStyle(height: 2),
                            children: [
                              TextSpan(
                                text: 'ABOUT ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 35,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                              TextSpan(
                                  text: 'ME\n',
                                  style: TextStyle(
                                      color: Color(0xFF00ff00),
                                      fontSize: 35,
                                      fontWeight: FontWeight.w100)),
                              TextSpan(
                                  text:
                                  'Full name: Yusuvaliyev Khurshidjon Alisher o\'g\'li\n',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w100)),
                              TextSpan(
                                  text: 'Age: 20 years old\n',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w100)),
                              TextSpan(
                                  text: 'University: ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w100)),
                              TextSpan(
                                  text:
                                  'University of Economics of the Republic of Uzbekistan \n',
                                  style: TextStyle(
                                      color: Color(0xFF00ff00),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w100)),
                              TextSpan(
                                  text: 'Programming Language: C++, Dart\n',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w100)),
                              TextSpan(
                                  text: 'Framework: Flutter\n',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w100)),
                              TextSpan(
                                  text: 'Occupation: Flutter Developer',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w100)),
                            ]),
                      ),
                    ),
                  ),
                  Container(
                    height: 360,
                    width: 260,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.shade600,
                        image: const DecorationImage(
                            image: AssetImage('assets/images/xurshid.jpg'),
                            fit: BoxFit.cover),
                        border:
                        Border.all(color: const Color(0xFF00ff00), width: 5)),
                  ),

                ],
              ),
            ),

            const SizedBox(height: 150),

            itemIndex(
              RichText(
                key: contactKey,
                text: const TextSpan(style: TextStyle(height: 2), children: [
                  TextSpan(
                    text: 'CONTACT ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  TextSpan(
                      text: 'INFO',
                      style: TextStyle(
                          color: Color(0xFF00ff00),
                          fontSize: 35,
                          fontWeight: FontWeight.w100)),
                ]),
              ),
            ),
            const SizedBox(height: 20),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NeumorphicButton(
                    onPressed: () {},
                    style: const NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.rect(),
                    ),
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      alignment: Alignment.center,
                      width: 300,
                      height: 100,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.phone,
                            color: Color(0xFF00ff00),
                            size: 25,
                          ),
                          const SizedBox(
                            width: 14,
                          ),
                          Column(
                            children: const [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Phone',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Expanded(
                                  child: Text(
                                    '+ 998 91 151 09 87',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w100,
                                        fontSize: 12),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                NeumorphicButton(
                    onPressed: () {},
                    style: const NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.rect(),
                    ),
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      alignment: Alignment.center,
                      width: 300,
                      height: 100,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.email_outlined,
                            color: Color(0xFF00ff00),
                            size: 25,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: const [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Email',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Expanded(
                                  child: Text(
                                    'yusuvaliyevx@gmail.com',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w100,
                                        fontSize: 10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                NeumorphicButton(
                    onPressed: () {},
                    style: const NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.rect(),
                    ),
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      alignment: Alignment.center,
                      width: 300,
                      height: 100,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            color: Color(0xFF00ff00),
                            size: 25,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: const [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Address',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    'Tashkent. Uzbekistan',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w100,
                                        fontSize: 12),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ],
            ),

            const SizedBox(height: 100),
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topLeft, colors: [
                  Colors.blueGrey.shade900,
                  Colors.blueGrey.shade700,
                  Colors.blueGrey.shade500,
                ]),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'K',
                      style: TextStyle(
                          color: Color(0xFF00ff00),
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                          letterSpacing: 1.5),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'hurshidjon',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 25,
                                letterSpacing: 1.5)),
                        TextSpan(
                          text: ' Y',
                          style: TextStyle(
                              color: Color(0xFF00ff00),
                              fontWeight: FontWeight.w600,
                              fontSize: 25),
                        ),
                        TextSpan(
                            text: 'usuvaliyev',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 25)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: _launchUrlTelegram,
                        icon: const Icon(
                          Icons.telegram,
                          color: Colors.blue,
                          size: 33,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      IconButton(
                        onPressed: _launchUrlInstagram,
                        icon: const Icon(
                          Iconsax.instagram,
                          color: Colors.blue,
                          size: 35,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Transform.translate(
                        offset: const Offset(0, 5),
                        child: InkWell(
                          onTap: _launchUrlIn,
                          mouseCursor: MouseCursor.defer,
                          hoverColor: Colors.red,
                          focusColor: Colors.green,
                          child: Container(
                            height: 35,
                            width: 35,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('assets/images/in_tr.png'),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Copyright © 2021 Khurshidbek',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget itemIndex(Widget child){
    return Container(
      child: child,
    );
  }
}
