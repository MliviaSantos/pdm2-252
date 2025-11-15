import 'package:flutter/material.dart';
import '../widgets/animated_card.dart';


class MobileScreen extends StatelessWidget {
const MobileScreen({super.key});


@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: const Text('Mobile Layout')),
body: const Center(
child: AnimatedCard(size: 150),
),
);
}
}
