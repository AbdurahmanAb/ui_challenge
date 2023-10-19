class PlantsModel {
  final String name;
  final String detail;
  final double price;
  final String imgPath;
  const PlantsModel(
      {required this.imgPath,
      required this.name,
      required this.price,
      required this.detail});
}

List<PlantsModel> plants = [
  PlantsModel(
      imgPath: "assets/pictures/plant2.png",
      name: "plant 2",
      price: 45,
      detail: ""),
  PlantsModel(
      imgPath: "assets/pictures/plant6.png",
      name: "plant 2",
      price: 45,
      detail: ""),
  PlantsModel(
      imgPath: "assets/pictures/plant5.png",
      name: "plant 2",
      price: 45,
      detail: ""),
  PlantsModel(
      imgPath: "assets/pictures/plant4.png",
      name: "plant 2",
      price: 45,
      detail: ""),
  PlantsModel(
      imgPath: "assets/pictures/plant1.png",
      name: "plant 2",
      price: 45,
      detail: ""),
  PlantsModel(
      detail:
          "This is the new Plant an here is it's detail which is long text by the way but read it nigga u will like it",
      name: "Chuchanda Plant",
      price: 25,
      imgPath: "assets/pictures/plant4.png")
];
