import 'package:flutter/material.dart';

class ItemCategory extends StatelessWidget {
  final String title, image;
  const ItemCategory({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 5, right: 15),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
        border: Border.all(color: Theme.of(context).colorScheme.primary.withOpacity(.2))
      ),
      child: Row(
        children: [
          Image.asset(image, height: 25, width: 25),
          const SizedBox(width: 10),
          Text(title)
        ],
      ),
    );
  }
}
