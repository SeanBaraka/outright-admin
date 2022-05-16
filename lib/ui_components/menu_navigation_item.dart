import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class MenuNavigationItem extends StatefulWidget {
  const MenuNavigationItem({
    Key? key,
    required this.iconUrl,
    required this.text,
    required this.active,
  }) : super(key: key);

  final String iconUrl;
  final String text;
  final bool active;

  @override
  State<MenuNavigationItem> createState() => _MenuNavigationItemState();
}

class _MenuNavigationItemState extends State<MenuNavigationItem> {
  var _selected = false;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          _selected = !_selected;
          // ignore: avoid_print
          print(widget.active);
        });
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        width: 55,
        padding: _selected == true
            ? const EdgeInsets.all(5)
            : const EdgeInsets.all(0),
        decoration: BoxDecoration(
          color:
              _selected == true ? const Color(0xFF6C63FF) : Colors.transparent,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(children: [
          SvgPicture.asset(widget.iconUrl),
          const SizedBox(
            height: 5,
          ),
          Text(
            widget.text,
            style: const TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.normal,
                color: Color(0xFFE7E7E7),
                decoration: TextDecoration.none),
          )
        ]),
      ),
    );
  }
}
