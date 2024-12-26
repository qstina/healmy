import 'package:flutter/material.dart';
import 'package:healmy/common/color_extension.dart';
import 'package:healmy/common_widget/round_button.dart';
import 'package:healmy/view/on_boarding/on_boarding_view.dart';

class StartedView extends StatefulWidget {
  const StartedView({super.key});

  @override
  State<StartedView> createState() => _StartedViewState();
}

class _StartedViewState extends State<StartedView> {

  bool isChangeColor = false;


  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: Container(
        decoration: BoxDecoration(
          gradient: isChangeColor ? LinearGradient(
          colors: TColor.primaryG,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight): null,
        ),
        child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                
                Image.asset('assets/img/logo.png'),

                const Spacer(),

                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(),
                    child: RoundButton(
                      title: "Get Started",
                      type: isChangeColor ? RoundButtonType.textGradient : RoundButtonType.bgGradient, 
                      onPressed: (){
                        if(isChangeColor) {
                          //Go Next Screen
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const OnBoardingView()));
                        } else {
                          //Change color
                          setState(() {
                            isChangeColor = true;
                          });
                        }
                    },)
                  ),
                )
              ],
            )
          )
      );
  }
}