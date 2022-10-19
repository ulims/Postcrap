import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:postcrap/models/asset_model.dart';
import 'package:postcrap/shared/constants.dart';

class ConfirmTransactions extends StatefulWidget {
  final String amountvalue;
  final String usdvalue;
  final String address;
  final AssetModel confirm;
  const ConfirmTransactions(
      {Key? key,
      required this.amountvalue,
      required this.confirm,
      required this.address,
      required this.usdvalue
      })
      : super(key: key);

  @override
  State<ConfirmTransactions> createState() => _ConfirmTransactionsState();
}

class _ConfirmTransactionsState extends State<ConfirmTransactions> {
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
              title: const Text(
                'Confirm Transaction',
                style: TextStyle(
                    color: textColor100,
                    fontFamily: 'Mabry-Pro',
                    fontSize: 18,
                    fontWeight: FontWeight.w900),
              ),
            ),
          )),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Column(
                  children: [
                    const Text(
                      'Amount',
                      style: TextStyle(
                          fontFamily: 'Mabry-Pro',
                          fontSize: 13,
                          color: textColor60,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Text(
                      widget.amountvalue,
                      style: const TextStyle(
                          fontFamily: 'Mabry-Pro',
                          fontSize: 32,
                          color: textColor100,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(
                          height: 22,
                          width: 22,
                          child: Image.asset('assets/images/sendicon.png'),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Container(
                          height: 22,
                          width: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: textColor100,
                              ),
                          child: const Center(
                              child: Text('Send',
                                  style: TextStyle(
                                      color: background,
                                      fontFamily: 'Mabry-Pro',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400))),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    widget.confirm.name,
                    style: const TextStyle(
                        fontFamily: 'Mabry-Pro',
                        fontSize: 15,
                        color: textColor100,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    height: 18,
                    width: 18,
                    child: Image.asset(widget.confirm.imageUrl),
                  )
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              const Divider(
                color: textColor10,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'To',
                      style: TextStyle(
                          fontFamily: 'Mabry-Pro',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: textColor60),
                    ),
                  ),
                  Text(
                    widget.address,
                    style: const TextStyle(
                        fontFamily: 'Mabry-Pro',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: textColor100),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              const Divider(
                color: textColor10,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: const[
                   Expanded(
                  child: Text(
                  'Amount in USD',
                  style: TextStyle(
                  fontFamily: 'Mabry-Pro',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: textColor60),
                  ),
                  ),
                  Text(
                  '0.00',
                  style: TextStyle(
                  fontFamily: 'Mabry-Pro',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: textColor100),
            ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              const Divider(
                color: textColor10,
              ),
              const SizedBox(
                height: 15,
              ),
               Row(
                children: const[
                   Expanded(
                  child: Text(
                  'Network fee',
                  style: TextStyle(
                  fontFamily: 'Mabry-Pro',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: textColor60),
                  ),
                  ),
                  Text(
                  '0.00',
                  style: TextStyle(
                  fontFamily: 'Mabry-Pro',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: textColor100),
            ),
                ],
              ),
              const Spacer(),
              Container(
              height: 50,
              width: double.infinity,
              color: textColor100,
              child: TextButton(onPressed: (){}, 
              child: Text('Confirm & Proceed',
              style: TextStyle(
              fontFamily: 'Mabry-Pro',
              fontSize: 15,
              fontWeight: FontWeight.w900,
              color: background
              ),
              )
              ),
              ),
              const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
