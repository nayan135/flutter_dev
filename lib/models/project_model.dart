class Dev {
  final String name;
  final String role;
  final String image;

  Dev({required this.name, required this.role, required this.image});

  factory Dev.fromJson(Map<String, dynamic> json) {
    return Dev(
      name: json['name'],
      role: json['role'],
      image: json['image'],
    );
  }
}

class Project {
  final String name;
  final String image;
  final String? shortDesc;
  final String? github;
  final String? playableUrl;
  final List<Dev> devs;
  

  Project({
    required this.name,
    required this.image,
    this.shortDesc,
    this.github,
    this.playableUrl,
    required this.devs,
  });

  factory Project.fromJson(Map<String, dynamic> json){
    var devJsonList = json['devs'] as List;
    List<Dev> devsList = devJsonList.map((devJson) => Dev.fromJson(devJson)).toList();


    return Project(
      name: json['name'],
      image: json['image'],
      shortDesc: json['shortDesc'] ?? json['description'],
      github: json['github'],
      playableUrl: json['playableUrl'] ?? json['url'],
      devs: devsList,
    );
  }
}