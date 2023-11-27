import 'package:flutter/material.dart';
import 'package:ismail_portfolio/core/layout/adaptive.dart';
import 'package:ismail_portfolio/core/utils/extensions/int_extensions.dart';
import 'package:ismail_portfolio/presentation/widgets/empty.dart';
import 'package:ismail_portfolio/presentation/widgets/on_hover.dart';

import '../../../core/values/values.dart';
import '../../../data/models/project_model.dart';
import '../../widgets/project_info_card.dart';

class Work extends StatefulWidget {
  const Work({super.key});

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
  final List<Color> colors = [
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
          end: FractionalOffset.bottomCenter,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            projects.length,
            (index) => SizedBox(
              height: 800,
              child: Center(
                child: projectSection(size, projects[index]),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget projectSection(Size size, ProjectModel project) {
    return OnHover(builder: (isHoverd) {
      return Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: responsiveSize(context, 400, 500),
                width: responsiveSize(context, 400, 500),
                child: AnimatedContainer(
                  duration: 600.milliseconds,
                  curve: Curves.easeInSine,
                  transform: isHoverd
                      ? (Matrix4.identity()..scale(1.06))
                      : Matrix4.identity(),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      project.coverImagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Empty(),
            ],
          ),
          AnimatedPositioned(
            duration: 600.milliseconds,
            curve: Curves.easeInSine,
            right: isHoverd
                ? responsiveSize(context, 0, 150)
                : responsiveSize(context, 200, 200),
            top: responsiveSize(context, 75, 100),
            child: ProjectInfoCard(
                size: size,
                title: project.projectName,
                description: project.description,
                type: project.type,
                isHoverd: isHoverd),
          ),
        ],
      );
    });
  }
}
