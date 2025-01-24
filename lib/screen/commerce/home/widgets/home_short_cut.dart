import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/commerce/assets_path.dart';

class HomeShortCut extends StatelessWidget {
  HomeShortCut({super.key});

  final List<String> iconList = [
    AssetsPath.jacket,
    AssetsPath.jumper,
    AssetsPath.necklace,
    AssetsPath.bag,
    AssetsPath.skirt,
    AssetsPath.shirt,
    AssetsPath.trousers,
    AssetsPath.cap,
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 16),
      children: List.generate(
          iconList.length,
          (index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(70, 70),
                        padding: EdgeInsets.all(16),
                        backgroundColor: Color(0xffFFE0C4),
                        elevation: 0,
                        overlayColor: Colors.black
                    ),
                    child: Image.asset(
                        iconList[index],
                        fit: BoxFit.cover,
                    ),
                ),
              ]
            );
          },),
    );
  }
}