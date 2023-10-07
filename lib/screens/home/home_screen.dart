import 'package:barber_shop_ui_tutorial/screens/home/widgets/item_barber.dart';
import 'package:barber_shop_ui_tutorial/screens/home/widgets/item_category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(15),
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const CircleAvatar(
                radius: 25,
                foregroundImage: AssetImage('assets/images/profile.JPG'),
              ),
              title: Text('Welcome', style: Theme.of(context).textTheme.bodyMedium),
              subtitle: Text('Ahad Hashmi', style: Theme.of(context).textTheme.titleMedium),
              trailing: const Icon(Icons.notifications_none_sharp, size: 30),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
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
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search for a barber',
                  hintStyle: TextStyle(fontWeight: FontWeight.w300),
                  border: InputBorder.none,
                  prefixIcon: Icon(CupertinoIcons.search, color: Colors.grey)
                ),
              ),
            ),
            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ItemCategory(title: 'Haircut', image: 'assets/images/haircut.png'),
                  ItemCategory(title: 'Shaving', image: 'assets/images/shaving.png'),
                  ItemCategory(title: 'Modeling', image: 'assets/images/modeling.png'),
                  ItemCategory(title: 'Haircut', image: 'assets/images/haircut.png'),
                  ItemCategory(title: 'Shaving', image: 'assets/images/shaving.png'),
                  ItemCategory(title: 'Modeling', image: 'assets/images/modeling.png'),
                ],
              ),
            ),
            const Column(
              children: [
                ItemBarber(title: 'Shahid Barber Shop', image: 'assets/images/barber1.jpg'),
                ItemBarber(title: 'Meesam Barber Shop', image: 'assets/images/barber2.jpg'),
                ItemBarber(title: 'Adnan Barber Shop', image: 'assets/images/barber3.jpg'),
                ItemBarber(title: 'Shahid Barber Shop', image: 'assets/images/barber1.jpg'),
                ItemBarber(title: 'Meesam Barber Shop', image: 'assets/images/barber2.jpg'),
                ItemBarber(title: 'Adnan Barber Shop', image: 'assets/images/barber3.jpg'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
