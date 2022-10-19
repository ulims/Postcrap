import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:postcrap/models/status_model.dart';
import 'package:postcrap/shared/constants.dart';
import 'package:postcrap/shared/like.dart';

class TronStatus extends StatefulWidget {
  const TronStatus({Key? key}) : super(key: key);

  @override
  State<TronStatus> createState() => _TronStatusState();
}

class _TronStatusState extends State<TronStatus> {
   int currentIndex = 0;
  late PageController _pageController;
  List<StatusModel> bitcoinlist = [
    StatusModel(
      imageUrl: 'assets/images/TRX.png'),
    StatusModel(
    imageUrl: 'assets/images/TRX.png'),
  ];

  @override
  void initState() {
   _pageController = PageController(initialPage: 0);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
     backgroundColor: textColor100,
      appBar: PreferredSize(
      preferredSize: const Size.fromHeight(60),
      child: Container(
        decoration: const BoxDecoration(
        ),
        child: AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark
      ),
        elevation: 0.0,
        backgroundColor: textColor100,
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: Padding(
        padding: const EdgeInsets.only(right: 10, left: 20),
        child: GestureDetector(
        onTap: () {
        Navigator.of(context).pop();
        },
        child: SizedBox(
        height: 30,
        width: 30,
        child: Image.asset('assets/images/cancel_status.png')),
          ),
        ),
        actions: const [
        Padding(
        padding: EdgeInsets.only(right: 20),
        child: LikeButton(),
        )
        ],
        title: const Text('Tron',
        style: TextStyle(
          color: background,
          fontFamily: 'Mabry-Pro',
          fontSize: 16,
          fontWeight: FontWeight.w900
          ),),
        ),)),
        body: PageView.builder(
          itemCount: bitcoinlist.length,
          controller: _pageController,
          scrollDirection: Axis.horizontal,
          onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
            children: [
              const SizedBox(height: 3,),
            AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeIn,
            height: 3.0,
            child: ListView.builder(
              itemCount: bitcoinlist.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
              return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(
              margin:
              const EdgeInsets.symmetric(horizontal: 3.0),
              width: MediaQuery.of(context).size.width/bitcoinlist.length,
              height: 8,
              decoration: BoxDecoration(
              color: currentIndex == index
              ? background
              : textColor60,
              borderRadius: BorderRadius.circular(5.0),
              ),
              ),
            ]);
            },
            ),
            ),
            const SizedBox(height: 60,),
            SizedBox(
              height: 200,
              width: 200,
            child: Image.asset(bitcoinlist[index].imageUrl)),
            ],
            ),
          );
        })),
    );  
  }
}