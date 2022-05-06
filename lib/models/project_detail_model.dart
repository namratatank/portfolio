class ProjectDetailModel {
  final String assetName;
  final String detail;
  final String title;
  final String? type1;
  final String? type2;
  final String? type3;
  final String? url;

  ProjectDetailModel({required this.assetName, required this.detail, required this.title, this.type1, this.type2, this.type3, this.url});
}

List<ProjectDetailModel> projectItems = [
  ProjectDetailModel(
      assetName: 'assets/images/My Nursery.png',
      detail:
      "My Nursery mobile app for both Android and IOS. View plants in "
          "list and grid view and you can also see detail of each plant. "
          "The purpose of this project is to learn flutter design.",
      title: "My Nursery",
    type1: "Flutter",
    type2: "Dart",
    type3: "Flutter UI",
    url: "https://github.com/namratakacha/My-Nursery"
  ),
  ProjectDetailModel(
      assetName: 'assets/images/ODE.png',
      detail:
      "ODE audio player mobile app for both Android and IOS with rest API "
          "and firebase integration for google login. User can search songs, "
          "radio, podcast and login with google as well as phone number",
      title: "ODE Audio Player",
      type1: "Flutter",
      type2: "Firebase",
      type3: "API",
    url: "https://github.com/namratakacha/ODE-Audio/tree/namrata"
  ),
  ProjectDetailModel(
      assetName: 'assets/images/Ask_nano.png',
      detail:
      "AskNano mobile app for both Android and IOS. The purpose of this project "
          "is to create design of beautiful splash screen, onboarding screen, "
          "login and registration screen and fancy bottom navigation bar",
      title: "Ask Nano",
      type1: "Flutter",
      type2: "Dart",
      type3: "Flutter UI",
    url: "https://github.com/namratakacha/Ask-Nano/tree/master"
  ),
  ProjectDetailModel(
      assetName: "assets/images/web_responsive.gif",
      detail:
      "Explore world, a beautiful responsive UI of travel app for Android, IOS and Web",
      title: "Explore world",
      type1: "Flutter Web",
      type2: "Responsive",
      type3: "Flutter UI"
  ),
];
