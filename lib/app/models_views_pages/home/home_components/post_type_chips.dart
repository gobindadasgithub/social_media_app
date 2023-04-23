import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/enum/post_type.dart';

class  PostTypeChips extends StatelessWidget {
  final PostType postType;
  final VoidCallback onTap;
  final bool isSelected;
  const  PostTypeChips({Key? key, required this.postType, required this.onTap, required this.isSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(25)),
        padding:const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          postType.name.capitalizeFirst.toString(),
          style: TextStyle(color: isSelected ? Colors.black : Colors.black),

        ),

      )
    );
  }
}
