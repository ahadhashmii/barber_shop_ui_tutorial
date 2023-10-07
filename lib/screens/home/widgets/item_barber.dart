import 'package:flutter/material.dart';

class ItemBarber extends StatelessWidget {
  final String title, image;
  const ItemBarber({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Theme.of(context).colorScheme.primary.withOpacity(.2),
            spreadRadius: 5,
            blurRadius: 5
          )
        ]
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(image, height: 150, width: 150, fit: BoxFit.cover),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(title, style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 3),
                Row(
                  children: List.generate(5, (index) => const Icon(Icons.star, size: 18, color: Colors.amber)),
                ),
                const SizedBox(height: 3),
                Text(
                    'Here is the barber shop, now you can book your favorite barber quickly.',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w300
                  ),
                ),
                const SizedBox(height: 5),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Colors.white
                  ),
                  child: const Text('Book Now'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
