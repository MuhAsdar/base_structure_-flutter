import 'package:flutter/material.dart';

class CustomCardWithBorder extends StatelessWidget {
	final Widget child;
	final double padding;
	final VoidCallback onTap;
	final Color borderColor;

	CustomCardWithBorder({
		this.child,
		this.padding = 16.0,
		this.onTap,
		this.borderColor
	});

	@override
	Widget build(BuildContext context) {
		final cardPadding = EdgeInsets.all(padding);
		return Container(
			width: double.infinity,
			decoration: BoxDecoration(
				color: Colors.white,
				borderRadius: BorderRadius.circular(5.0),
				boxShadow: <BoxShadow>[
					BoxShadow(
							color: Color(0xFFD8D8D8),
							blurRadius: 16.0,
							offset: Offset(0.0, 8.0)
					)
				],
			),
			child: Container(
				decoration: BoxDecoration(
					color: Colors.transparent,
					border: Border(
						top: BorderSide(width: 7.0, color: borderColor != null ? borderColor : Colors.transparent),
					),
				),
				child: Material(
					color: Colors.transparent,
					child: InkWell(
							onTap: onTap,
							borderRadius: BorderRadius.circular(10.0),
							child: Container(
								color: Colors.transparent,
								padding: cardPadding,
								child: getChild(),
							)
					),
				),
			),
		);
	}

	Widget getChild() {
		return child == null ? Container() : child;
	}
}