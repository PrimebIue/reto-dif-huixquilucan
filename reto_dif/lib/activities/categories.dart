
import 'package:flutter/material.dart';
import 'package:reto_dif/services/category.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  Map data = {};
  List<DifCategory> categories = [];

  static final List<MaterialColor> colors = [
    Colors.red,
    Colors.pink,
    Colors.lightBlue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.indigo,
    Colors.teal
  ];

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    categories = data['categories'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Image.asset(
          'assets/logo.png',
          fit: BoxFit.contain,
          height: 40,
        ),
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                goToCategory(categories[index]);
              },
              customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  decoration: BoxDecoration(
                      color: colors[index % colors.length],
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FadeInImage.assetNetwork(
                        placeholder: 'assets/placeholder_icon.png',
                        image: categories[index].iconUrl.url!,
                        height: 80,
                        width: 100,
                        imageErrorBuilder: (context, error, stacktrace) {
                          return Image.asset(
                            'assets/placeholder_icon.png',
                            height: 80,
                            width: 100,
                          );
                        },
                      ),
                      Text(
                        categories[index].name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void goToCategory(DifCategory category) {
    Navigator.pushNamed(context, '/',
        arguments: {'category': category, 'loadState': 1});
  }
}
