import 'package:flutter/material.dart';

class ProgressPageIndicator extends AnimatedWidget {
	final PageController pageController;

	final int pageCount;

	final Color primaryColor;

	final Color secondaryColor;

	final num height;

	final Color borderColor;
	final double borderWidth;
	final double radius;

	ProgressPageIndicator({
		@required this.pageController,
		@required this.pageCount,
		@required this.primaryColor,
		@required this.secondaryColor,
		this.height = 10.0,
		this.borderWidth = 0,
		this.borderColor = Colors.transparent,
		this.radius = 0,
	}) : super(listenable: pageController);

	@override
	Widget build(BuildContext context) {
		return Container(
			height: height,
			decoration: BoxDecoration(
				borderRadius: BorderRadius.circular(radius),
				border: Border.all(color: borderColor,width:borderWidth),
			),
			child: LinearProgressIndicator(
				backgroundColor: secondaryColor,
				valueColor: Tween(begin: primaryColor, end: primaryColor).animate(kAlwaysCompleteAnimation),
				value: (pageController.page ?? pageController.initialPage) / (pageCount - 1),
			),
		);
	}
}