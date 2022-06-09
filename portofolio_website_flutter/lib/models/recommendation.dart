class Recommendation {
  final String? name, source, text;

  Recommendation({this.name, this.source, this.text});
}

final List<Recommendation> demo_recommendations = [
  Recommendation(
    name: "Naufal Ulwan",
    source: "Linkedin",
    text: "Ini akun linkedin saya",
  ),
  Recommendation(
    name: "opangpoo",
    source: "instagram",
    text: "Ini akun instagram saya",
  ),
  Recommendation(
    name: "BUKANMAEN",
    source: "YouTube",
    text: "Ini akun youtube saya",
  ),
];
