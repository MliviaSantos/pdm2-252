import 'package:flutter/material.dart';


class AnimatedCard extends StatefulWidget {
final double size;


const AnimatedCard({super.key, required this.size});


@override
State<AnimatedCard> createState() => _AnimatedCardState();
}


class _AnimatedCardState extends State<AnimatedCard> {
bool toggled = false;


@override
Widget build(BuildContext context) {
return GestureDetector(
onTap: () => setState(() => toggled = !toggled),
child: AnimatedContainer(
duration: const Duration(milliseconds: 500),
width: toggled ? widget.size * 1.3 : widget.size,
height: toggled ? widget.size * 1.3 : widget.size,
decoration: BoxDecoration(
color: toggled ? Colors.blueAccent : Colors.orange,
borderRadius: BorderRadius.circular(20),
),
),
);
}
}
