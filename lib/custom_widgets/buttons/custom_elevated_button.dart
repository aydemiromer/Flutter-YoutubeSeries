import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key,
      required this.width,
      required this.height,
      required this.onPressed,
      required this.child,
      this.color,
      this.radius});
  final double? height;
  final double? width;
  final VoidCallback? onPressed;
  final Widget? child;
  final Color? color;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(color ?? Colors.orange),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius ?? 20)))),
        child: child,
      ),
    );
  }
}

///*** Example Usage */
//

class ViewCustomElevatedButton extends StatelessWidget {
  const ViewCustomElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Custom Button"),
          Center(
            child: CustomElevatedButton(
                width: 200, height: 50, onPressed: null, child: Text("Button")),
          )
        ],
      ),
    );
  }
}
