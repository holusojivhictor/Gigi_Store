import 'package:flutter/material.dart';
import 'package:gigi_store/components/default_button.dart';
import 'package:gigi_store/constants.dart';
import 'package:gigi_store/screens/sign_in/sign_in.dart';
import 'package:gigi_store/screens/splash/components/splash_content.dart';
import 'package:gigi_store/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {
      "image": "assets/images/urban-8.png",
      "text": "Welcome to Gigi Store, let's shop!"
    },
    {
      "image": "assets/images/urban-7.png",
      "text": "We help people connect with stores \naround Nigeria"
    },
    {
      "image": "assets/images/urban_5.png",
      "text": "We show the easy way to shop. \nJust stay at home with us"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: Constants.kPadding),
              child: Text(
                "GIGI STORE",
                style: TextStyle(fontSize: getProportionateScreenWidth(20),
                    color: Constants.kPrimaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]["text"],
                ),
                ),
            ),
            Expanded(
              flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20),
                  ),
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(splashData.length, (index) => buildDot(index: index)),
                      ),
                      Spacer(flex: 3),
                      DefaultButton(
                        press: () {
                          Navigator.pushNamed(context, SignInScreen.routeName);
                        },
                        text: "Continue",
                      ),
                      Spacer(),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: Constants.kAnimationDuration,
      margin: EdgeInsets.only(right: Constants.kPadding / 2),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Constants.kPrimaryColor : Constants.kSecondaryColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

