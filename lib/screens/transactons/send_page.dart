import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:postcrap/models/asset_model.dart';
import 'package:postcrap/screens/transactons/scanner.dart';
import 'package:postcrap/screens/transactons/send_amount.dart';
import 'package:postcrap/shared/constants.dart';

class SendPage extends StatefulWidget {
  final AssetModel send;
  const SendPage({Key? key, required this.send}) : super(key: key);

  @override
  State<SendPage> createState() => _SendPageState();
}

class _SendPageState extends State<SendPage> {
  final _formKey = GlobalKey<FormState>();
  String address = '';
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
              title: Text(
                'Send ${widget.send.symbol}',
                style: const TextStyle(
                    color: textColor100,
                    fontFamily: 'Mabry-Pro',
                    fontSize: 18,
                    fontWeight: FontWeight.w900),
              ),
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
            child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'TO',
                        style: TextStyle(
                            fontFamily: 'Mabry-Pro',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: textColor100),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.length < 27 || value.length > 35) {
                            return "Please enter valid address";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() => address = value);
                        },
                        cursorColor: primary100,
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: textColor100,
                            fontFamily: 'Mabry-Pro'),
                        decoration: InputDecoration(
                            suffixIcon: Padding(
                              padding: const EdgeInsets.fromLTRB(13, 13, 0, 13),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: ((context) => const Scanner())));
                                },
                                child: Image.asset(
                                  'assets/images/scan.png',
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: textColor100, width: 1.5),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: textColor100, width: 1.5)),
                            hintText: 'Enter ${widget.send.symbol} address',
                            hintStyle: const TextStyle(
                                fontFamily: 'Mabry-Pro',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: textColor20)),
                      ),
                    ],
                  )),
            ),
            const Spacer(),
            Container(
              height: 50,
              width: double.infinity,
              color: textColor100,
              child: TextButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      await Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) =>  SendAmount(accept: widget.send,))));
                    }
                  },
                  child: const Text(
                    'Proceed',
                    style: TextStyle(
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
        )),
      ),
    );
  }
}
