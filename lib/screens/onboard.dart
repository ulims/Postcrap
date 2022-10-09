import 'package:flutter/material.dart';
import 'package:postcrap/models/onboard_model.dart';
import 'package:postcrap/screens/wrapper.dart';
import 'package:postcrap/shared/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int currentIndex = 0;
  late PageController _pageController;

  List<OnboardModel> screens = <OnboardModel>[
    OnboardModel(
      img: 'assets/images/onboard 2.png', 
      text: 'Enjoy the best of funny memes', 
      desc: 'Express your creativity with using our appa using our premium services loerm ipsum ipsum lorem.'),
    OnboardModel(
      img: 'assets/images/onboard 1.png', 
      text: 'Make people laugh and Earn', 
      desc: 'Express your creativity with using our appa using our premium services loerm ipsum ipsum lorem.'),
  ];

  @override
  void initState() {
   _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
  _pageController.dispose();
    super.dispose();
  }

  _storeOnboardInfo() async{
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onBoard', isViewed);
    //print('shared prefs called');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: screens.length,
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (_, index) {
          return SingleChildScrollView(
            child: Column(
            children: [
              Image.asset(screens[index].img),
              const SizedBox(height: 0,),
              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: 1),
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                    builder: (BuildContext context, double val, Widget? child){
                     return Opacity(
                      opacity: val,
                      child: Padding(
                       padding: EdgeInsets.only(top: val * 10),
                        child: child,
                        ),
                      );
                      },
                      child: Text(
                        screens[index].text,
                        style: const TextStyle(
                          fontFamily: 'Mabry-Pro',
                          fontSize: 36,
                          fontWeight: FontWeight.w900,
                          color: textColor100,
                          height: 1.4
                        ),
                        ),
                    ),
                     TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: 1),
                    duration: const Duration(milliseconds: 700),
                    curve: Curves.easeIn,
                    builder: (BuildContext context, double val, Widget? child){
                     return Opacity(
                      opacity: val,
                      child: Padding(
                       padding: EdgeInsets.only(top: val * 12),
                        child: child,
                        ),
                      );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Text(
                          screens[index].desc,
                          style: const TextStyle(
                            fontFamily: 'Mabry-Pro',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: textColor60,
                            height: 1.6
                          ),
                          ),
                      ),
                    ),
                    const SizedBox(height: 60),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeIn,
                      height: 10.0,
                      child: ListView.builder(
                        itemCount: screens.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                margin:
                                const EdgeInsets.symmetric(horizontal: 3.0),
                                width: currentIndex == index ? 20 : 8,
                                height: 8,
                                decoration: BoxDecoration(
                                color: currentIndex == index
                                ? primary100
                                : textColor10,
                                borderRadius: BorderRadius.circular(10.0),
                                ),
                                ),
                              ]);
                        },
                      ),
                    ),
                    const SizedBox(height: 15),
                    InkWell(
                      onTap: () {
                      if (index == screens.length - 1) {
                      _storeOnboardInfo();
                      Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                       builder: (context) => const Wrapper()));
                        }
                       _pageController.nextPage(
                       duration: const Duration(milliseconds: 300),
                       curve: Curves.easeIn,);
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                        color: textColor100,
                        shape: BoxShape.rectangle,
                        ),
                       
                        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        Center(
                          child: Text(
                          index % 2 == 1 ? 'Proceed to App👋' : 'Proceed to Next👋',
                          style: const TextStyle(
                          fontFamily: 'Mabry-Pro',
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: background,
                          ),
                          ),
                        ),
                        ]),
                      ),
                    ),
                ],
              ),
              )
            ],
            ),
          );
        }),
    );
  }
}
