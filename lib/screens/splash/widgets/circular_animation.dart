import 'package:flutter/material.dart';

class CircularSplash extends StatefulWidget {
  const CircularSplash({super.key, required this.strokeWidth});
  final double strokeWidth;

  @override
  _CircularSplashState createState() => _CircularSplashState();
}

class _CircularSplashState extends State<CircularSplash>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 30),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _controller,
      child:  CircularProgressIndicator(
        color: Colors.white,
        strokeWidth: widget.strokeWidth,


        // semanticsValue: "${widget.state.progress * 100} %",
        // value: widget.state.progress,
        // semanticsLabel: "${widget.state.progress * 100} %",
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
