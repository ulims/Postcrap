import 'package:flutter/material.dart';
import 'package:postcrap/shared/constants.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _formKey = GlobalKey<FormState>();
  String username = '';
  String description = '';

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
                elevation: 0.0,
                backgroundColor: background,
                automaticallyImplyLeading: false,
                centerTitle: true,
                title: const Text(
                  'Edit Profile',
                  style: TextStyle(
                      fontFamily: 'Aeonik',
                      color: textColor100,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                leading: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: SizedBox(
                      height: 10,
                      width: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(11),
                        child: Image.asset('assets/images/leading.png'),
                      ),
                    ),
                  ),
                )),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Email address',
                      style: TextStyle(
                          fontFamily: 'Mabry-Pro',
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: textColor60),
                    ),
                    SizedBox(
                      height: 37,
                      width: double.infinity,
                      child: TextFormField(
                          cursorColor: textColor100,
                          enabled: false,
                          decoration: const InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: textColor100, width: 1.3),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: textColor40, width: 0.7)),
                              hintText: 'Johndoe@gmail.com',
                              hintStyle: TextStyle(
                                  fontFamily: 'Mabry-Pro',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: textColor40))),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Username',
                      style: TextStyle(
                          fontFamily: 'Mabry-Pro',
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: textColor60),
                    ),
                    SizedBox(
                      height: 37,
                      width: double.infinity,
                      child: TextFormField(
                         onChanged: (val) {
                            setState(() => username = val);
                          },
                          validator: (val) => val!.length < 3
                              ? 'Must be 3 characters long'
                              : null,
                          cursorColor: textColor100,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: textColor100,
                              fontFamily: 'Mabry-Pro'),
                          decoration: const InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: textColor100, width: 1.3),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: textColor40, width: 0.7)),
                              hintText: 'Anonymous',
                              hintStyle: TextStyle(
                                  fontFamily: 'Mabry-Pro',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: textColor40))),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Description',
                      style: TextStyle(
                          fontFamily: 'Mabry-Pro',
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: textColor60),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: TextFormField(
                         onChanged: (val) {
                            setState(() => description = val);
                          },
                          validator: (val) => val!.length < 4
                              ? 'Must be 4 characters long'
                              : null,
                          maxLines: 5,
                          minLines: 1,
                          cursorColor: textColor100,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 1.3,
                              color: textColor100,
                              fontFamily: 'Mabry-Pro'),
                          decoration: const InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: textColor100, width: 1.3),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: textColor40, width: 0.7)),
                              hintText:
                                  'Once upon a time, i downloaded this app.',
                              hintStyle: TextStyle(
                                  fontFamily: 'Mabry-Pro',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: textColor40))),
                    ),
                  ],
                ),
                const SizedBox(height: 60,),
                Container(
                height: 45,
                width: double.infinity,
                color: textColor100,
                child: TextButton(onPressed: (() {   }), 
                child: const Text(
                'Change password',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: background
                ),
                )
                ),
                ),
                const SizedBox(height: 20,),
                 Container(
                height: 45,
                width: double.infinity,
                color: primary100,
                child: TextButton(onPressed: (() async{
                  if(_formKey.currentState!.validate()){
                    print(description);
                  }
                 }), 
                child: const Text(
                'Save Changes',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: background
                ),
                )
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
