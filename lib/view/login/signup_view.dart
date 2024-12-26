import 'package:flutter/material.dart';
import 'package:healmy/common/color_extension.dart';
import 'package:healmy/common_widget/round_button.dart';
import 'package:healmy/common_widget/round_textfield.dart';
import 'package:healmy/view/login/complete_profile_view.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hey there,",
                  style: TextStyle(color: TColor.gray, fontSize: 16),
                ),
                Text(
                  "Create an Account,",
                  style: TextStyle(
                      color: TColor.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                const RoundTextfield(
                  hitText: "First Name",
                  icon: "assets/img/profile_icon.png",
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                const RoundTextfield(
                  hitText: "Last Name",
                  icon: "assets/img/profile_icon.png",
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                const RoundTextfield(
                  hitText: "Email",
                  icon: "assets/img/email_icon.png",
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                RoundTextfield(
                  hitText: "Password",
                  icon: "assets/img/password_icon.png",
                  obscureText: true,
                  rightIcon: TextButton(
                    onPressed: () {},
                    child: Container(
                      alignment: Alignment.center,
                      width: 15,
                      height: 15,
                      child: Image.asset(
                        "assets/img/show_icon.png",
                        width: 15,
                        height: 15,
                        fit: BoxFit.contain,
                        color: TColor.gray,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isCheck = !isCheck;
                        });
                      },
                      icon: Icon(
                        isCheck
                            ? Icons.check_box_outlined
                            : Icons.check_box_outline_blank_outlined,
                        color: TColor.gray,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Expanded(
                        child: Text(
                          "By continuing, you accept our Privacy Policy and\nTerm of Use.",
                          style: TextStyle(
                            color: TColor.gray,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: media.width * 0.25,
                ),

                RoundButton(title: "Register", onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const CompleteProfileView()));
                }),

                SizedBox(
                  height: media.width * 0.04,
                ),

                Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Container(
                      height: 1,
                      color: TColor.gray.withOpacity(0.5),
                    )),
                    Text(
                      " Or ",
                      style: TextStyle(
                        color: TColor.black,
                        fontSize: 10,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.maxFinite,
                        height: 1,
                        color: TColor.gray.withOpacity(0.5),
                      ),
                    )
                  ],
                ),

                SizedBox(
                  height: media.width * 0.04,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){}, 
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: TColor.white,
                          border: Border.all(
                            width: 1, 
                            color: TColor.gray.withOpacity(0.5),),
                            borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          "assets/img/google.png",
                          width: 20,
                          height: 20,
                        ),
                      ),),

                      SizedBox(
                        width: media.width * 0.04,
                      ),

                      GestureDetector(
                      onTap: (){}, 
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: TColor.white,
                          border: Border.all(
                            width: 1, 
                            color: TColor.gray.withOpacity(0.5),),
                            borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          "assets/img/fb.png",
                          width: 20,
                          height: 20,
                        ),
                      ),)
                  ],
                ),

                SizedBox(
                  height: media.width * 0.04,
                ),

                TextButton(onPressed: (){}, child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(color: TColor.black, fontSize: 14,),
                    ),
                    Text(
                      " Login",
                      style: TextStyle(color: TColor.black, fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                  ],
                )),

                SizedBox(
                  height: media.width * 0.04,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
