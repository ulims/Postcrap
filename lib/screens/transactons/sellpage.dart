import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:postcrap/models/p2p_AdModel.dart';
import 'package:postcrap/screens/transactons/payment_window.dart';
import 'package:postcrap/shared/constants.dart';

class SellPage extends StatefulWidget {
  final Admodel sell;
  const SellPage({Key? key, required this.sell}) : super(key: key);

  @override
  State<SellPage> createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController addresscontroller = TextEditingController();
  String sellamount = '';
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
        'Sell ${widget.sell.symbol}',
        style: const TextStyle(
        color: textColor100,
        fontFamily: 'Mabry-Pro',
        fontSize: 15,
        fontWeight: FontWeight.w900),
    ),
    ),
    )),
    body: SafeArea(child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const SizedBox(height: 30,),
        const Text('Limit Amount',
        style: TextStyle(
        fontFamily: 'Mabry-Pro',
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: textColor60
        ),
        ),
        const SizedBox(height: 7,),
         RichText(text:
         TextSpan(
          text: widget.sell.amountCurrency,
          style:const TextStyle(
          color: textColor100,
          fontFamily: 'Mabry-Pro',
          fontSize: 22,
          fontWeight: FontWeight.w500
          ),
          children: const[
          WidgetSpan(child: SizedBox(width: 6,)),
          TextSpan(
          text: 'NGN',
          style: TextStyle(
          fontSize: 13,
          )
          )
          ]
         ),
         ),
         const SizedBox(height: 50,),
          SizedBox(
          width: double.infinity,
          child: Form(
          key: _formKey,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const Text(
          'Sell amount',
          style: TextStyle(
          fontFamily: 'Mabry-Pro',
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: textColor100),
          ),
          const SizedBox(height: 5,),
          TextFormField(
          controller: addresscontroller,
          validator: (value) => value!.isEmpty ? 'Please a enter a valid amount' : null,
          onChanged: (value) {
          setState(() => sellamount = value);
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
          child: Container(
            width: 93,
            color: background,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Container(
            height: 28,
            width: 50,
            decoration: BoxDecoration(
            color: textColor100,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: textColor20,width: 1)
            ),
            child: const Center(
              child:  Text('Max',
              style: TextStyle(
              fontFamily: 'Mabry-Pro',
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: background
              ),
              ),
            ),
            ),
            const SizedBox(width: 12,),
            Text(widget.sell.symbol,
            style: const TextStyle(
            fontFamily: 'Mabry-Pro',
            fontSize: 14,
            color: textColor60,
            fontWeight: FontWeight.w400
            ),
            )
            ],
            ),
          ),
          ),
          focusedBorder: const UnderlineInputBorder(
          borderSide:
          BorderSide(color: textColor100, width: 1.5),
          ),
          enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
          color: textColor10, width: 1.5)),
          hintText: '0.00',
          hintStyle: const TextStyle(
          fontFamily: 'Mabry-Pro',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: textColor20)),
          ),
          const SizedBox(height: 50,),
          const Text(
          'Receive amount',
          style: TextStyle(
          fontFamily: 'Mabry-Pro',
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: textColor100),
          ),
          const SizedBox(height: 5,),
          TextFormField(
          controller: addresscontroller,
          validator: (value) => value!.isEmpty ? 'Please a enter a valid amount' : null,
          onChanged: (value) {
          setState(() => sellamount = value);
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
          child: Container(
          width: 40,
          color: background,
          child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const[
          Text('NGN',
          style: TextStyle(
          fontFamily: 'Mabry-Pro',
          fontSize: 14,
          color: textColor60,
          fontWeight: FontWeight.w400
          ),
          ),
          ],
          ),
          ),
          ),
          focusedBorder: const UnderlineInputBorder(
          borderSide:
          BorderSide(color: textColor100, width: 1.5),
          ),
          enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
          color: textColor10, width: 1.5)),
          hintText: '0.00',
          hintStyle: const TextStyle(
          fontFamily: 'Mabry-Pro',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: textColor20)),
          ),
          ],
          )),
          ),
          const SizedBox(height: 30,),
          GestureDetector(
            child: Row(
            children: const[
            Icon(Icons.add, size: 20,color: primary100,),
            Text('Add Bank Account',
            style: TextStyle(
            fontFamily: 'Mabry-Pro',
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: primary100
            ),
            )
            ],
            ),
          ),
          const SizedBox(height: 100,),
          Container(
          height: 50,
          width: double.infinity,
          color: sellamount.isEmpty ? textColor3 : textColor100,
          child: TextButton(
          onPressed: () async{
            if(_formKey.currentState!.validate()){
              await Navigator.of(context).push(MaterialPageRoute(builder: ((context) => PaymentWindow())));
            }
          }, 
          child: Text('Sell ${widget.sell.symbol}',
          style: const TextStyle(
          fontFamily: 'Mabry-Pro',
          fontSize: 15,
          fontWeight: FontWeight.w900,
          color: background
          ),
          )
          ),
          ),
        ],),
      ),
    )),
    );
  }
}
