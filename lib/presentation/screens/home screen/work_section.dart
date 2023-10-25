import 'package:flutter/material.dart';
import 'package:ismail_portfolio/constants/app_colors.dart';
import 'package:ismail_portfolio/presentation/utils/empty.dart';
import 'package:ismail_portfolio/presentation/utils/extensions.dart';
import 'package:ismail_portfolio/presentation/widgets/on_hover.dart';

class Work extends StatefulWidget {
  const Work({super.key});

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
  List projects = [
    {
      "title": "Reserva | Reservation Project",
      "type": "Mobile Application",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
      "img": "assets/images/reserva.jpg",
    },
    {
      "title": "Car Rental",
      "type": "Desktop Dashboard",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
      "img": "assets/images/car.jpg",
    },
    {
      "title": "DSS | Decision Support System",
      "type": "Mobile Application",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
      "img": "assets/images/dss.jpg",
    },
    {
      "title": "SARC | Syrian Arab Red Crescent",
      "type": "Mobile Application",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
      "img": "assets/images/sarc.jpg",
    },
    {
      "title": "Ayas Interior Design & Curtains",
      "type": "Website",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
      "img": "assets/images/ayas1.jpg",
    },
  ];

  List<Color> colors = [
    AppColors.lightCyan,
    AppColors.lightCyan,
    AppColors.lightBlue,
    AppColors.lightBlue,
    AppColors.yellow,
    AppColors.yellow,
    AppColors.silver,
    AppColors.silver,
    AppColors.silver,
    AppColors.silver,
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topCenter,
            end: FractionalOffset.bottomCenter),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            projects.length,
            (index) => Container(
              height: size.height + size.height / 5,
              color: projects[index]["color"],
              child: Center(
                child: projectSection(size, projects[index]),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget projectSection(Size size, dynamic project) {
    return OnHover(builder: (isHoverd) {
      return Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 700.getH(context),
                width: 700.getW(context),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                  transform: isHoverd
                      ? (Matrix4.identity()..scale(1.06))
                      : Matrix4.identity(),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      project["img"],
                      // Replace with your image path
                      fit: BoxFit.cover, // Fit the image to the container
                    ),
                  ),
                ),
              ),
              const SizedBox(),
            ],
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
            right: isHoverd ? 200.getW(context) : 300.getW(context),
            top: 120.getH(context),
            child: projectInfoCard(size, project["title"],
                project["description"], project["type"]),
          ),
        ],
      );
    });
  }

// "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  Widget projectInfoCard(
    Size size,
    String title,
    String description,
    String type,
  ) {
    return Container(
      // width: size.width / 3,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: const Offset(-5, 5),
              color: AppColors.black.withOpacity(0.5),
              blurRadius: 40,
            )
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: 30.getW(context)),
          RotatedBox(
            quarterTurns: 3,
            child: Text(
              type,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15.getW(context),
                  color: AppColors.black.withOpacity(0.6)),
            ),
          ),
          SizedBox(width: 40.getW(context)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 30.getH(context)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    style:  TextStyle(
                      fontSize: 35.getW(context),
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.getH(context)),
              SizedBox(
                width: size.width / 4,
                child: Text(
                  description,
                  maxLines: 8,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18.getW(context),
                    color: AppColors.textColor.withOpacity(0.8),
                  ),
                ),
              ),
              SizedBox(height: 30.getH(context)),
              OnHover(
                builder: (isHoverd) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(),
                    const SizedBox(),
                    const SizedBox(),
                    const SizedBox(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 350),
                          height: 2,
                          width: isHoverd ? 30 : 5,
                          color: AppColors.textColor,
                          child: const SizedBox(),
                        ),
                        const SizedBox(width: 10),
                         Text(
                          "See More",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColors.textColor,
                            fontSize: 18.getW(context),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.getH(context)),
            ],
          ),
          SizedBox(width: 30.getW(context)),
        ],
      ),
    );
  }
}
