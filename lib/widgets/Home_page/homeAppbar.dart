import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Appbar extends StatefulWidget {
  const Appbar({super.key});

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Iconsax.category),
      ),
      title: Row(
        children: [
          Spacer(),
          Text(
            'S',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.sports_soccer,
            color: Colors.grey.shade500,
          ),
          Text(
            'ccer',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Kings',
            style: TextStyle(color: Colors.grey.shade500),
          ),
          Spacer(),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Iconsax.notification),
        ),
      ],
    );
  }
}
