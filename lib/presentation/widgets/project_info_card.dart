import 'package:flutter/material.dart';
import 'package:ismail_portfolio/core/layout/adaptive.dart';
import 'package:ismail_portfolio/core/utils/extensions/int_extensions.dart';
import 'package:ismail_portfolio/presentation/widgets/spaces.dart';

import '../../core/values/values.dart';

class ProjectInfoCard extends StatelessWidget {
  const ProjectInfoCard({
    super.key,
    required this.size,
    required this.title,
    required this.description,
    required this.type,
    required this.isHoverd,
  });

  final Size size;
  final String title;
  final String description;
  final String type;
  final bool isHoverd;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: responsiveSize(context, 400, 450),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(-5, 5),
            color: AppColors.black.withOpacity(0.5),
            blurRadius: 40,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SpaceW20(),
          RotatedBox(
            quarterTurns: 3,
            child: Text(
              type,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: AppColors.black.withOpacity(0.6),
              ),
            ),
          ),
          const SpaceW20(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SpaceH40(),
              Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: responsiveSize(context, 18, 25),
                  fontWeight: FontWeight.w600,
                  color: AppColors.textColor,
                ),
              ),
              const SpaceH30(),
              SizedBox(
                width: size.width / 4,
                child: Text(
                  description,
                  maxLines: 8,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.textColor.withOpacity(0.8),
                  ),
                ),
              ),
              const SpaceH30(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AnimatedContainer(
                    duration: 600.milliseconds,
                    curve: Curves.easeInSine,
                    height: 2,
                    width: isHoverd ? 30 : 5,
                    color: AppColors.textColor,
                    child: const SizedBox(),
                  ),
                  10.width,
                  const Text(
                    "See More",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SpaceH40(),
            ],
          ),
          const SpaceW20(),
        ],
      ),
    );
  }
}
