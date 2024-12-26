import 'package:healmy/common/color_extension.dart';
import 'package:flutter/material.dart';

import '../../common_widget/round_textfield.dart';

class CompleteProfileView extends StatefulWidget {
  const CompleteProfileView({super.key});

  @override
  State<CompleteProfileView> createState() => _CompleteProfileViewState();
}

class _CompleteProfileViewState extends State<CompleteProfileView> {

  TextEditingController txtDate = TextEditingController();
  
  @override
  Widget build(BuildContext context) {

    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Image.asset(
                "assets/img/complete_profile.png",
                width: media.width,
                fit: BoxFit.fitWidth
              ),
              SizedBox(
                  height: media.width * 0.04,
                ),
              Text(
                  "Let's complete profile",
                  style: TextStyle(
                    color: TColor.black, 
                    fontSize: 20, 
                    fontWeight: FontWeight.w700),
                ),
                Text(
                  "It will help us to know more about you!",
                  style: TextStyle(
                      color: TColor.black,
                      fontSize: 12,
                      ),
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      RoundTextfield(
                        controller: txtDate,
                        hitText: "Date of Birth",
                        icon: "assets/img/date_icon.png",
                      ),

                      Row(
                        children: [
                          const Expanded(
                            child: RoundTextfield(
                              hitText: "Your Weight", 
                              icon: "assets/img/weight_icon.png"),
                          ),

                          const SizedBox(width: 8,),

                          Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: TColor.secondaryG),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              "KG",
                              style: TextStyle(
                                color: TColor.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      
                      SizedBox(
                        height: media.width * 0.04,
                      ),

                      Row(
                        children: [
                          const Expanded(
                            child: RoundTextfield(
                              hitText: "Your Height", 
                              icon: "assets/img/height_icon.png"),
                          ),

                          const SizedBox(width: 8,),

                          Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: TColor.secondaryG),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              "CM",
                              style: TextStyle(
                                color: TColor.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                    ],
                  ),
            ]),
          )],
          )),
      ),
    );
  }
}