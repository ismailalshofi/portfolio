import 'package:flutter/material.dart';
import 'package:ismail_portfolio/constants/app_colors.dart';
import 'package:ismail_portfolio/presentation/utils/extensions.dart';
import 'package:ismail_portfolio/presentation/widgets/on_hover.dart';

class LetsTalk extends StatelessWidget {
  List contact = [
    {
      "icon": "assets/icons/linked-in.png",
      "url": "",
    },
    {
      "icon": "assets/icons/skype.png",
      "url": "",
    },
    {
      "icon": "assets/icons/telegram.png",
      "url": "",
    },
    {
      "icon": "assets/icons/twitter.png",
      "url": "",
    },
    {
      "icon": "assets/icons/github.png",
      "url": "",
    },
  ];
  LetsTalk({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Container(
                height: 200.getH(context),
                width: 200.getW(context),
                decoration: BoxDecoration(
                  color: AppColors.orange,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const SizedBox(),
              ),
          Text(
            "Let's work together",
            style: TextStyle(
              fontSize: 140.getW(context),
              fontWeight: FontWeight.w500,
              height: 1,
              color: AppColors.silver,
            ),
          ),
          OnHover(
            builder: (isHoverd) => AnimatedOpacity(
              opacity: isHoverd ? 1 : 0.1,
              duration: const Duration(milliseconds: 600),
              child:  AnimatedDefaultTextStyle(
                style: TextStyle(
                  fontSize: 30.getW(context),
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w200,
                  color: AppColors.silver,
                ),
                duration: const Duration(milliseconds: 150),
                child: const Text("Feel free to reach out anytime, I'm available for Consultancy & Freelancing"),
              ),
            ),
          ),
          OnHover(
            builder: (isHoverd) => AnimatedContainer(
              duration: const Duration(milliseconds: 350),
              width: isHoverd ? size.width / 5 : 50,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.orange, width: 1),
                color: const Color(0xdd000000),
                borderRadius: isHoverd
                    ? BorderRadius.circular(25)
                    : BorderRadius.circular(60),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    isHoverd
                        ? Icons.send
                        : Icons.keyboard_double_arrow_right_rounded,
                    color: AppColors.orange,
                    size: 20,
                  ),
                  AnimatedDefaultTextStyle(
                    duration: const Duration(milliseconds: 350),
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      color: AppColors.silver,
                      fontWeight: FontWeight.w500,
                      fontSize: isHoverd ? 20.getW(context) : 0,
                    ),
                    child: const Text(
                      "ialshofi@gmail.com",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              contact.length,
              (index) => OnHover(
                builder: (isHoverd) => AnimatedContainer(
                    transform: isHoverd
                        ? (Matrix4.identity()..scale(1.1, 1.1, 1.0))
                        : Matrix4.identity(),
                    duration: const Duration(milliseconds: 100),
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image(image: AssetImage(contact[index]["icon"]))),
              ),
            ),
          ),
          Padding(
            padding:const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "© 2023 Built & Desiged By Ismail Alshofi",
                style: TextStyle(
                  fontSize: 18.getW(context),
                  fontWeight: FontWeight.w300,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
