import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:outrightadmin/src/main_content.dart';
import 'package:outrightadmin/src/side_bar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF3F3F3),
      child: Row(
        children: const [
          Expanded(flex: 1, child: SideBarMenu()),
          Expanded(flex: 9, child: MainContent())
        ],
      ),
    );
  }
}
