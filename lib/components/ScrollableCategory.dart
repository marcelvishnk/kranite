import 'package:flutter/material.dart';
import 'package:kranite/data/consts.dart';

class ScrollableCategoryListView extends StatefulWidget {
  const ScrollableCategoryListView({Key? key}) : super(key: key);

  @override
  State<ScrollableCategoryListView> createState() =>
      _ScrollableCategoryListViewState();
}

class _ScrollableCategoryListViewState extends State<ScrollableCategoryListView> {
  int indexSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        SizedBox(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              categories.length,
              (index) => GestureDetector(
                onTap: (){
                  setState(() {
                    indexSelected = index;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: index == indexSelected ?  const Color(0xffCBCDFE) : const Color(0xff363636) ,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Center(
                      child: Text(
                        categories[index],
                        style: const TextStyle(
                          color: Color(0xff6B6B6B),
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}