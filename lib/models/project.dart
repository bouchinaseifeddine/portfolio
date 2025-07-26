class Project {
  final String name;
  final String description;
  final String link;
  final String image;
  final String? appStoreUrl;
  final String? playStoreUrl;

  Project(
      {required this.name,
      required this.description,
      required this.link,
      this.appStoreUrl,
      this.playStoreUrl,
      required this.image});
}
