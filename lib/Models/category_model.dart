import 'dart:ui';

class CategoryModel{
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
});
 static List<CategoryModel> getCategories(){
  List<CategoryModel> categories = [];
  
  categories.add(
      CategoryModel(
          name: 'Salad',
          iconPath: 'asset/icons/salad.svg',
          boxColor: Color(0xff92A3FD)
      )
  );
  categories.add(
      CategoryModel(
          name: 'Cake',
          iconPath: 'asset/icons/cake.svg',
          boxColor: Color(0xffcb72f8)
      )
  );
  categories.add(
      CategoryModel(
          name: 'Pie',
          iconPath: 'asset/icons/pie.svg',
          boxColor: Color(0xff92A3FD)
      )
  );
  categories.add(
      CategoryModel(
          name: 'Smoothie',
          iconPath: 'asset/icons/smoothie.svg',
          boxColor: Color(0xffcb72f8)
      )
  );
  return categories;
}
}