import 'package:flutter/material.dart';

class Numeros extends StatefulWidget {
  const Numeros({super.key});

  @override
  State<Numeros> createState() => _NumerosState();
}

class _NumerosState extends State<Numeros> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {},
              child: Image.asset('lib/assets/images/1.png'),
            ),
            TextButton(
              onPressed: () {},
              child: Image.asset('lib/assets/images/2.png'),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {},
              child: Image.asset('lib/assets/images/3.png'),
            ),
            TextButton(
              onPressed: () {},
              child: Image.asset('lib/assets/images/4.png'),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {},
              child: Image.asset('lib/assets/images/5.png'),
            ),
            TextButton(
              onPressed: () {},
              child: Image.asset('lib/assets/images/6.png'),
            ),
          ],
        ),
      ],
    );
  }
}
