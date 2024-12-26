import 'package:flutter/material.dart';
import 'package:healmy/view/login/signup_view.dart';
import '../../common/color_extension.dart';
import '../../common_widget/on_boarding_page.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int selectPage = 0;
  PageController controller = PageController();

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      selectPage = controller.page?.round() ?? 0;

      setState(() {

      });
    });
  }

  List pageArr = [
    {
      "title":"Write It Out",
      "subtitle":
        "Got a lot on your mind? Our journaling feature is here to help you express yourself, clear your head, and feel a little lighter.",
      "image":"assets/img/on_1.png"
       },
    {
      "title":"Keep Tabs\non Your Mood",
      "subtitle":
        "Noticing how you feel is the first step to understanding yourself. Our mood tracker makes it simple to see your emotional ups and downs.","image":"assets/img/on_2.png"
        },
    {
      "title":"Find Your\nPeople",
      "subtitle":
        "You’re not alone. Join a community of people who’ve been there and get the support you deserve.","image":"assets/img/on_3.png"
        },
    {
      "title":"Get the Help\nYou Need",
      "subtitle":
        "Looking for a therapist nearby? We’ll help you find trusted professionals so you can focus on feeling better.","image":"assets/img/on_4.png"
        },
  ];

  @override
  Widget build(BuildContext context){
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: TColor.white,
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
            controller: controller,
            itemCount: pageArr.length,
            itemBuilder: (context, index) {
              var pObj = pageArr[index] as Map? ?? {};
              return OnBoardingPage(pObj: pObj);           
            }
          ),

          SizedBox(
            width: 120,
            height: 120,
            child: Stack(
            alignment: Alignment.center,
            children: [

              SizedBox(
                width: 70,
                height: 70,
                child: CircularProgressIndicator(
                  color: TColor.primaryColor1,
                  value: selectPage / 4,
                  strokeWidth: 2,
                ),
              ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                width: 60,
                height: 60,
                decoration: BoxDecoration(color: TColor.primaryColor1, borderRadius: BorderRadius.circular(35)),
                child: IconButton(icon: Icon( Icons.navigate_next, color: TColor.white,), onPressed: (){

                  if(selectPage < 3) {
                    selectPage = selectPage + 1;

                    controller.animateToPage(selectPage, duration: const Duration(milliseconds: 300), curve: Curves.bounceInOut);

                    //controller.jumpToPage(selectPage);  

                  } else {
                      print("Open Welcome Screen");   
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupView()));          
                  }
                },
                )
              ),

            ]
            )
          )
        ]
      )
    );
  }
}