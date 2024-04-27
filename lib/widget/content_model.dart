class UnboardingContent {
  String image;
  String title;
  String description;
  UnboardingContent(
      {required this.description, required this.image, required this.title});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      description: 'Pick Your Food From Our Menu\n     More Than 35 Times',
      image: "images/screen1.png",
      title: 'Select From Our\n      Best Menu'),
  UnboardingContent(
      description:
          'You can pay cash on delivery and\n     card payment is available ',
      image: "images/screen2.png",
      title: 'Easy and online payment '),
  UnboardingContent(
      description: 'Deliver Your food at\n       your Doorstep ',
      image: "images/screen3.png",
      title: 'Quick delivery at\n      your doorstep ')
];
