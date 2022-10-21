import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:postcrap/shared/constants.dart';
import 'package:postcrap/widget/adCard.dart';
import 'package:postcrap/widget/text.dart';

class P2P extends StatefulWidget {
  const P2P({Key? key}) : super(key: key);

  @override
  State<P2P> createState() => _P2PState();
}

class _P2PState extends State<P2P> {

  //initial selected value
  String coindropdownValue = 'Bitcoin';
  String currencydropdownValue = 'NGN';

  //List of items in dropdown
  var coinitems = [
    'Bitcoin',
    'Tether'
  ];
  var currencyitems = [
    'NGN',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                  offset: Offset(
                    0,
                    0.4,
                  ),
                  blurRadius: 0,
                  color: textColor10)
            ]),
            child: AppBar(
                systemOverlayStyle: const SystemUiOverlayStyle(
                    statusBarColor: Colors.transparent,
                    statusBarIconBrightness: Brightness.dark,
                    statusBarBrightness: Brightness.light),
                elevation: 0.0,
                backgroundColor: background,
                automaticallyImplyLeading: false,
                centerTitle: true,
                leading: Padding(
                  padding: const EdgeInsets.only(right: 10, left: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: SizedBox(
                        height: 25,
                        width: 25,
                        child: Image.asset('assets/images/back.png')),
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Image.asset(
                      'assets/images/history.png',
                      width: 24,
                      height: 24,
                    ),
                  )
                ],
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'P2P',
                      style: TextStyle(
                          fontFamily: 'Mabry-Pro',
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          color: textColor100),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      'beta',
                      style: TextStyle(
                          fontFamily: 'Mabry-Pro',
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: textColor60),
                    ),
                  ],
                )),
          )),
      body: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                    offset: Offset(
                      0,
                      0.4,
                    ),
                    blurRadius: 0,
                    color: textColor10)
              ], color: background),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    //
                    Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(width: 1, color: textColor3),
                          color: tlast),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TabBar(
                            indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: textColor10, width: 1),
                              color: background,
                            ),
                            labelColor: textColor100,
                            labelPadding: const EdgeInsets.all(4),
                            unselectedLabelColor: textColor60,
                            labelStyle: const TextStyle(
                                fontFamily: 'Mabry-Pro',
                                fontSize: 13,
                                color: textColor100,
                                fontWeight: FontWeight.w500),
                            indicatorSize: TabBarIndicatorSize.tab,
                            tabs: const [
                              Tab(
                                text: 'Buy',
                              ),
                              Tab(
                                text: 'Sell',
                              ),
                            ]),
                      ),
                    ),
                    const SizedBox(
                      width: 13,
                    ),

                    //
                    Container(
                      height: 40,
                      width: 93,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(width: 1, color: textColor3),
                      color: tlast),

                      //setting up the dropdown
                      child: Center(
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                          value: coindropdownValue,
                          elevation: 01,
                          borderRadius: BorderRadius.circular(10),
                          icon: Image.asset('assets/images/dropdown.png', width: 15,height: 15,),
                          items: coinitems.map((String items){
                            return DropdownMenuItem(
                            value: items,
                            child: Text(items,
                            style: const TextStyle(
                            fontFamily: 'Mabry-Pro',
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: textColor100
                        
                            ),));
                          }).toList(),
                          onChanged: ((String? newvalue) {
                           setState(() {
                             coindropdownValue = newvalue!;
                           }); 
                          })),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 13,
                    ),

                    //
                    Container(
                      height: 40,
                      width: 82,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(width: 1, color: textColor3),
                          color: tlast),
                    child: Center(
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                          value: currencydropdownValue,
                          elevation: 01,
                          borderRadius: BorderRadius.circular(10),
                          icon: Image.asset('assets/images/dropdown.png', width: 15,height: 15,),
                          items: currencyitems.map((String citems){
                            return DropdownMenuItem(
                            value: citems,
                            child: Text(citems,
                            style: const TextStyle(
                            fontFamily: 'Mabry-Pro',
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: textColor100
                        
                            ),));
                          }).toList(),
                          onChanged: ((String? currencyvalue) {
                           setState(() {
                             currencydropdownValue = currencyvalue!;
                           }); 
                          })),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30,),
            Expanded(
                flex: 1,
                child: TabBarView(children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 110,
                        width: 110,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                            'assets/images/no_Ad.png',
                          )),
                        ),
                      ),
                      text3
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: AdCard(),
                  )
                ]))
          ],
        ),
      ),
    );
  }
}
