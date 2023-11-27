part of 'values.dart';

class CertificationData {
  CertificationData({
    required this.title,
    required this.image,
    required this.imageSize,
    required this.url,
    required this.awardedBy,
  });

  final String image;
  final double imageSize;
  final String url;
  final String title;
  final String awardedBy;
}


class ExperienceData {
  ExperienceData({
    required this.position,
    required this.roles,
    required this.location,
    required this.duration,
    required this.company,
    this.companyUrl,
  });

  final String company;
  final String? companyUrl;
  final String location;
  final String duration;
  final String position;
  final List<String> roles;
}

class SkillData {
  SkillData({
    required this.skillName,
    required this.skillLevel,
  });

  final String skillName;
  final double skillLevel;
}

class SocialData {
  final IconData iconData;
  final String url;
  final String name;
  final Color? color;

  SocialData({
    required this.name,
    required this.iconData,
    required this.url,
    this.color = AppColors.white,
  });
}

class Data {
  static List<SocialData> socialData = [
    SocialData(
      name: AppText.github,
      iconData: FontAwesomeIcons.github,
      url: AppText.githubURL,
    ),
    SocialData(
      name: AppText.linkedin,
      iconData: FontAwesomeIcons.linkedin,
      url: AppText.linkedinURL,
    ),
    SocialData(
      name: AppText.twitter,
      iconData: FontAwesomeIcons.twitter,
      url: AppText.twitterURL,
    ),
    SocialData(
      name: AppText.telegram,
      iconData: FontAwesomeIcons.telegram,
      url: AppText.telegramURL,
    ),
  ];

  static List<String> mobileDevelopment = [
    'Dart'
    'Swift',
    'Flutter',
    'Firebase',
    'BLoC',
    "Provider",
    'Http'
  ];
  static List<String> artificialIntelligence = [
    'Python'
    'Machine Learning',
    'Deep Learning',
    'Neural Netwrorks',
    'Computer Vision',
    'Data Analysis',
    'Data Visualization',
    'NLP',
    'KBS',
    'OpenCV',
    'TensorFlow',
    'Pandas',
    'Robotics',
  ];
static List<String> generalSkills = [
    'Business Analysis'
    'Requirement Engineering',
    'Algorithm Design',
    'Problem Solving',
    'Design Patterns'
    'Clean Architecture'
    'OOP',
    'SQL',
    'PHP',
    'C++',
    'Java',
    'Trello',
    'Jira',
    'Git',
    'UI/UX',
    'Figma',
    'HTML',
    'CSS',
  ];
  
  // static List<CertificationData> certificationData = [
  //   CertificationData(
  //     title: AppText.MSC_IT,
  //     url: AppText.CMU_CERT_URL,
  //     image: ImagePath.CMU_MASTERS_CERT,
  //     imageSize: 0.325,
  //     awardedBy: AppText.CMU,
  //   ),
  //   CertificationData(
  //     title: AppText.ASSOCIATE_ANDROID_DEV,
  //     url: AppText.ASSOCIATE_ANDROID_DEV_URL,
  //     image: ImagePath.ASSOCIATE_ANDROID_DEV,
  //     imageSize: 0.325,
  //     awardedBy: AppText.GOOGLE,
  //   ),
  //   CertificationData(
  //     title: AppText.CLOUD_DEVELOPER,
  //     url: AppText.CLOUD_DEVELOPER_URL,
  //     image: ImagePath.CLOUD_DEVELOPER_CERT,
  //     imageSize: 0.325,
  //     awardedBy: AppText.UDACITY,
  //   ),
  //   CertificationData(
  //     title: AppText.DATA_SCIENCE,
  //     url: AppText.DATA_SCIENCE_CERT_URL,
  //     image: ImagePath.DATA_SCIENCE_CERT,
  //     imageSize: 0.325,
  //     awardedBy: AppText.UDACITY,
  //   ),
  //   CertificationData(
  //     title: AppText.ANDROID_BASICS,
  //     url: AppText.ANDROID_BASICS_CERT_URL,
  //     image: ImagePath.ANDROID_BASICS_CERT,
  //     imageSize: 0.325,
  //     awardedBy: AppText.UDACITY,
  //   ),
  // ];

  // static List<ExperienceData> experienceData = [
  //   ExperienceData(
  //     company: AppText.COMPANY_5,
  //     position: StringConst.POSITION_5,
  //     companyUrl: StringConst.COMPANY_5_URL,
  //     roles: [
  //       StringConst.COMPANY_5_ROLE_1,
  //       StringConst.COMPANY_5_ROLE_2,
  //       StringConst.COMPANY_5_ROLE_3,
  //     ],
  //     location: StringConst.LOCATION_5,
  //     duration: StringConst.DURATION_5,
  //   ),
  //   ExperienceData(
  //     company: StringConst.COMPANY_4,
  //     position: StringConst.POSITION_4,
  //     companyUrl: StringConst.COMPANY_4_URL,
  //     roles: [
  //       StringConst.COMPANY_4_ROLE_1,
  //       StringConst.COMPANY_4_ROLE_2,
  //       StringConst.COMPANY_4_ROLE_3,
  //     ],
  //     location: StringConst.LOCATION_4,
  //     duration: StringConst.DURATION_4,
  //   ),
  //   ExperienceData(
  //     company: StringConst.COMPANY_3,
  //     position: StringConst.POSITION_3,
  //     companyUrl: StringConst.COMPANY_3_URL,
  //     roles: [
  //       StringConst.COMPANY_3_ROLE_1,
  //       StringConst.COMPANY_3_ROLE_2,
  //       StringConst.COMPANY_3_ROLE_3,
  //     ],
  //     location: StringConst.LOCATION_3,
  //     duration: StringConst.DURATION_3,
  //   ),
  //   ExperienceData(
  //     company: StringConst.COMPANY_2,
  //     position: StringConst.POSITION_2,
  //     companyUrl: StringConst.COMPANY_2_URL,
  //     roles: [
  //       StringConst.COMPANY_2_ROLE_1,
  //       StringConst.COMPANY_2_ROLE_2,
  //       StringConst.COMPANY_2_ROLE_3,
  //     ],
  //     location: StringConst.LOCATION_2,
  //     duration: StringConst.DURATION_2,
  //   ),
  // ];
}
