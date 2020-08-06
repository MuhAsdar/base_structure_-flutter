import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
	final Widget child;
	final double padding;
	final VoidCallback onTap;
	final double radius;
	final Color borderColor;
	final double borderWidth;
	final Color cardColor;

	CustomCard({
		this.child,
		this.padding = 16.0,
		this.onTap,
		this.radius = 5.0,
		this.borderColor = Colors.transparent,
		this.borderWidth = 0.0,
		this.cardColor = Colors.white,
	});

  @override
  Widget build(BuildContext context) {
	  final cardPadding = EdgeInsets.all(padding);
	  return Container(
		  width: double.infinity,
		  decoration: BoxDecoration(
			  color: cardColor,
			  borderRadius: BorderRadius.circular(radius),
			  border: Border.all(color: borderColor,width:borderWidth ),
			  boxShadow: <BoxShadow>[
				  BoxShadow(
						  color: Color(0xFFD8D8D8),
						  blurRadius: 16.0,
						  offset: Offset(0.0, 8.0)
				  )
			  ],
		  ),
		  child: Material(
			  color: Colors.transparent,
			  child: InkWell(
					  onTap: onTap,
					  borderRadius: BorderRadius.circular(5.0),
					  child: Container(
						  color: Colors.transparent,
						  padding: cardPadding,
						  child: getChild(),
					  )
			  ),
		  ),
	  );
  }

	Widget getChild() {
		return child == null ? Container() : child;
	}
}
