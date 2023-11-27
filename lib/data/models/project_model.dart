class ProjectModel {
  String projectName;
  String type;
  String companyName;
  String platform;
  String category;
  String description;
  String coverImagePath;

  ProjectModel({
    required this.projectName,
    required this.type,
    required this.companyName,
    required this.platform,
    required this.category,
    required this.description,
    required this.coverImagePath,
  });
}

List<ProjectModel> projects = [
  ProjectModel(
    projectName: "Reserva | Reservation Project",
    type: 'Mobile Application',
    companyName: 'Smart Software Solutions',
    platform: 'Android & iOS',
    category: 'Food & Booking',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    coverImagePath: 'assets/images/reserva.jpg',
  ),
  ProjectModel(
    projectName: "Car Rental",
    type: 'Desktop Dashboard',
    companyName: 'Smart Software Solutions',
    platform: 'Windows',
    category: 'Online Reservation System',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    coverImagePath: 'assets/images/car.jpg',
  ),
  ProjectModel(
    projectName: "DSS | Decision Support System",
    type: 'Mobile Application',
    companyName: 'Smart Software Solutions',
    platform: 'Android & iOS',
    category: 'Business intelligence',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    coverImagePath: 'assets/images/dss.jpg',
  ),
  ProjectModel(
    projectName: "SARC | Syrian Arab Red Crescent",
    type: 'Mobile Application',
    companyName: 'Self Employed',
    platform: 'Android & iOS',
    category: 'Project management software',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    coverImagePath: 'assets/images/sarc.jpg',
  ),
  ProjectModel(
    projectName: "Ayas Interior Design & Curtains",
    type: 'Mobile Application',
    companyName: 'Self Employed',
    platform: 'Android & iOS',
    category: 'Website',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    coverImagePath: 'assets/images/ayas1.jpg',
  ),
];
