import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:postcrap/models/asset_model.dart';
import 'package:postcrap/screens/transactons/confirm_transactions.dart';
import 'package:postcrap/shared/constants.dart';

class SendAmount extends StatefulWidget {
  final AssetModel accept;
  final String address;
  const SendAmount({Key? key, required this.accept, required this.address}) : super(key: key);

  @override
  State<SendAmount> createState() => _SendAmountState();
}

class _SendAmountState extends State<SendAmount> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController amountcontroller = TextEditingController();
  TextEditingController amountUSDcontroller = TextEditingController();
  String amount = "";

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
                  statusBarBrightness: Brightness.light,
                  systemNavigationBarIconBrightness: Brightness.light,
                  systemNavigationBarColor: textColor100),
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
                'Enter Amount',
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
                height: 20,
              ),
              Form(
                  key: _formKey,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.accept.symbol,
                                  style: const TextStyle(
                                      fontFamily: 'Mabry-Pro',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: textColor100),
                                ),
                                TextFormField(
                                  controller: amountcontroller,
                                  style: const TextStyle(
                                      color: textColor100,
                                      fontSize: 40,
                                      fontFamily: 'Mabry-Pro',
                                      fontWeight: FontWeight.w500),
                                  showCursor: false,
                                  autofocus: true,
                                  keyboardType: TextInputType.number,
                                  keyboardAppearance: Brightness.light,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      contentPadding:
                                          EdgeInsets.only(bottom: 11, right: 15),
                                      hintText: '0',
                                      hintStyle: TextStyle(
                                          fontSize: 40,
                                          color: textColor20,
                                          fontFamily: 'Mabry-Pro',
                                          fontWeight: FontWeight.w500)),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Enter a valid amount';
                                    }
                                    return null;
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'NGN',
                                  style: TextStyle(
                                      fontFamily: 'Mabry-Pro',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: textColor100),
                                ),
                                TextFormField(
                                  controller: amountUSDcontroller,
                                  style: const TextStyle(color: textColor20),
                                  showCursor: false,
                                  enabled: false,
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      contentPadding:
                                          EdgeInsets.only(bottom: 11, right: 15),
                                      hintText: '0',
                                      hintStyle: TextStyle(
                                          fontSize: 40,
                                          color: textColor100,
                                          fontFamily: 'Mabry-Pro',
                                          fontWeight: FontWeight.w500)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 32,
                        width: 57,
                        decoration: BoxDecoration(
                            color: textColor100,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(width: 1.5, color: textColor40)),
                        child: const Center(
                          child: Text(
                            'MAX',
                            style: TextStyle(
                                fontFamily: 'Mabry-Pro',
                                fontSize: 12,
                                color: background,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      )
                    ],
                  )),
              const Spacer(),
              Container(
                height: 50,
                width: double.infinity,
                color: textColor100,
                child: TextButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        await Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => ConfirmTransactions(
                                amountvalue: amountcontroller.text,
                                usdvalue: amountUSDcontroller.text,
                                confirm: widget.accept,
                                address: widget.address))));
                      }
                    },
                    child: Text(
                      'Send ${widget.accept.symbol}',
                      style: const TextStyle(
                          fontFamily: 'Mabry-Pro',
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: background),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
