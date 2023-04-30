import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key? key, required this.isActive, required this.color}) : super(key: key);
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive ?  CircleAvatar(
      backgroundColor: Colors.white,
      radius: 26,
      child: CircleAvatar(
        radius: 22,
        backgroundColor: color
      ),
    ) :  CircleAvatar(
      radius: 26,
      backgroundColor: color,
    );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({Key? key}) : super(key: key);

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xff96adc8),
    Color(0xffd7ffab),
    Color(0xfffcff6c),
    Color(0xffd89d6a),
    Color(0xff6D454C),
    Color(0xff004f2d),
    Color(0xffd87cac),
    Color(0xfff9b9c3),
    Color(0xffffda22),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 26*2,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder:  (context , index){
            return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: (){
                  currentIndex = index;
                  setState(() {

                  });
                },
                child: ColorItem(
                  isActive: currentIndex == index, color: colors[index],
                ),
              ),
            );
          }),
    );
  }
}
