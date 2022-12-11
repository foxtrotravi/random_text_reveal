library random_text_reveal;

import 'dart:math';

import 'package:flutter/material.dart';

class RandomTextReveal extends StatefulWidget {
  const RandomTextReveal({
    Key? key,
    required this.text,
    this.style,
    this.randomString = 'ABCDEFGHJKLMNOPQRSTUVWXYZ',
    this.duration = const Duration(seconds: 2),
    this.curve = Curves.easeIn,
    this.textDirection = TextDirection.ltr,
    this.locale,
    this.maxLines,
    this.overflow,
    this.softWrap,
    this.textAlign,
    this.semanticsLabel,
  }) : super(key: key);

  final String text;
  final String randomString;
  final Duration duration;
  final Curve curve;
  final TextStyle? style;
  final TextDirection? textDirection;
  final Locale? locale;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool? softWrap;
  final TextAlign? textAlign;
  final String? semanticsLabel;

  @override
  State<RandomTextReveal> createState() => _RandomTextRevealState();
}

class _RandomTextRevealState extends State<RandomTextReveal>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this);

    CurvedAnimation curvedAnimation = CurvedAnimation(
      parent: _controller,
      curve: widget.curve,
    );

    _animation = Tween<double>(
      begin: 0,
      end: widget.text.length.toDouble(),
    ).animate(curvedAnimation)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _animatedText(text: widget.text, value: _animation.value.toInt()),
      style: widget.style,
      textDirection: widget.textDirection,
      locale: widget.locale,
      maxLines: widget.maxLines,
      overflow: widget.overflow,
      softWrap: widget.softWrap,
      textAlign: widget.textAlign,
      semanticsLabel: widget.semanticsLabel,
    );
  }

  String _animatedText({required String text, required int value}) {
    if (value == text.length) return text;

    String substring = text.substring(0, value);

    int len = text.length - substring.length;

    final random = Random();
    final randomString = StringBuffer();

    for (int i = 0; i < len; i++) {
      int index = random.nextInt(widget.randomString.length);
      randomString.writeCharCode(
        widget.randomString.codeUnitAt(index),
      );
    }

    return '$substring${randomString.toString()}';
  }
}
