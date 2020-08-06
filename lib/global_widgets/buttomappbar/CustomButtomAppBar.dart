import 'package:flutter/material.dart';
import 'package:flutterbasestructure/utils/ScreenUtils.dart';

class CustomBottomAppBarItem {
  CustomBottomAppBarItem({this.iconData, this.text});

  IconData iconData;
  String text;
}

class CustomBottomAppBar extends StatefulWidget {
  CustomBottomAppBar(
      {this.items,
      this.centerItemText,
      this.height: 60.0,
      this.iconSize: 24.0,
      this.backgroundColor,
      this.color,
      this.selectedColor,
      this.notchedShape,
      this.onTabSelected,
      this.notchMargin: 0.0}) {
    assert(this.items.length == 2 || this.items.length == 4);
  }

  final List<CustomBottomAppBarItem> items;
  final String centerItemText;
  final double height;
  final double iconSize;
  final Color backgroundColor;
  final Color color;
  final Color selectedColor;
  final NotchedShape notchedShape;
  final ValueChanged<int> onTabSelected;
  final double notchMargin;

  @override
  _CustomBottomAppBarState createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  int _selectedIndex = 0;

  _updateIndex(int index) {
    widget.onTabSelected(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
//	  List<Widget> items = List.generate(widget.items.length, (int index) {
//		  return _buildTabItem(
//			  item: widget.items[index],
//			  index: index,
//			  onPressed: _updateIndex,
//		  );
//	  });

    return BottomAppBar(
      shape: widget.notchedShape,
      notchMargin: widget.notchMargin,
      child: Padding(
        padding: EdgeInsets.only(right:8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
//        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildTabItem(item: widget.items[0], index: 0, onPressed: _updateIndex),
            _buildTabItem(item: widget.items[1], index: 1, onPressed: _updateIndex),
            Spacer(),
            _buildTabItem(item: widget.items[2], index: 2, onPressed: _updateIndex),
            _buildTabItem(item: widget.items[3], index: 3, onPressed: _updateIndex)
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem({
    CustomBottomAppBarItem item,
    int index,
    ValueChanged<int> onPressed,
  }) {
    Color color = _selectedIndex == index ? widget.selectedColor : widget.color;
    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () => onPressed(index),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(item.iconData, color: color, size: widget.iconSize),
                Text(
                  item.text,
                  style: TextStyle(color: color, fontSize: ScreenUtils.dp14(context)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
