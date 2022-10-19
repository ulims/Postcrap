import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:postcrap/models/asset_model.dart';
import 'package:postcrap/shared/constants.dart';
import 'package:postcrap/widget/text.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class ReceivePage extends StatefulWidget {
  final AssetModel receive;
  const ReceivePage({Key? key, required this.receive}) : super(key: key);

  @override
  State<ReceivePage> createState() => _ReceivePageState();
}

class _ReceivePageState extends State<ReceivePage> {
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
              title:  Text(
              'Receive ${widget.receive.symbol}',
              style: const TextStyle(
              color: textColor100,
              fontFamily: 'Mabry-Pro',
              fontSize: 18,
              fontWeight: FontWeight.w900),
              ),
            ),
          )),
          body: SafeArea(child: 
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
              children: [
              const SizedBox(height: 27,),
              Container(
              height: 95,
              width: double.infinity,
              decoration: BoxDecoration(
              color:background,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1, color: textColor3)
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                SizedBox(height: 20, width: 20,child: Image.asset('assets/images/warning.png'),),
                const SizedBox(width: 10,),
                Flexible(child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: Text(
                  'Only send ${widget.receive.name} to this address. Ensure the sender is on the ${widget.receive.symbol} network or you might lose your deposit',
                  style: const TextStyle(
                  fontFamily: 'Mabry-Pro',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: textColor80,
                  height: 1.45
                  ),
                  ),
                ))
                ],
                ),
              ),
              ),
              const SizedBox(height: 40,),
              PrettyQr(
              data: '1HTnz289t3JfYgaRT2ioBXmbPybWr5jT9t',
              image: AssetImage(widget.receive.imageUrl),
              size: 270,
              elementColor: textColor100,
              typeNumber: 3,
              roundEdges: true,
              ),
              const SizedBox(height: 40,),
              Container(
              height: 75,
              width: double.infinity,
              decoration: BoxDecoration(
              border: Border.all(width: 1, color: textColor3),
              borderRadius: BorderRadius.circular(5)
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 15, bottom: 14, left: 18, top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: const[
                Text('Deposit address',
                style: TextStyle(
                fontFamily: 'Mabry-Pro',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: textColor60
                ),
                ),
                SizedBox(height: 4,),
                Text('1HTnz289t3JfYgaRT2ioBXmbPybWr5jT9t',
                style: TextStyle(
                fontFamily: 'Mabry-Pro',
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: textColor100
                ),
                ),
                ],
                ),
              ),
              ),
              const SizedBox(height: 50,),
              Container(
              height: 50,
              width: double.infinity,
              color: textColor100,
              child: TextButton(onPressed: (){},
               child: const Text('Copy Address',
               style: TextStyle(
              color: background,
              fontFamily: 'Mabry-Pro',
              fontWeight: FontWeight.w900,
              fontSize: 15,
               ),
               )),
              )
              ],
              ),
            ),
          )),
    );
  }
}
