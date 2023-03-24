import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});
  final String name = "Food";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FoodWidget(
            btnName: name,
            onPressed: () {},
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: FoodWidget(btnName: name, onPressed: () {})),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProjectColors {
  final Color redcolor = Colors.red;
  final Color whitecolor = Colors.white;
}

class _ProjectPaddings {
  final EdgeInsets normalPadding = const EdgeInsets.all(10);
  final EdgeInsets largePadding = const EdgeInsets.all(20);
}

class FoodWidget extends StatelessWidget with _ProjectColors, _ProjectPaddings {
  FoodWidget({Key? key, required this.btnName, required this.onPressed})
      : super(key: key);
  final String btnName;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: normalPadding,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: redcolor, shape: const StadiumBorder()),
        onPressed: onPressed,
        child: Text(
          btnName,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: whitecolor),
        ),
      ),
    );
  }
}
