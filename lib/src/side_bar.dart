// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../ui_components/menu_navigation_item.dart';

class SideBarMenu extends StatelessWidget {
  const SideBarMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20),
        constraints: const BoxConstraints(minWidth: 25),
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color(0xFF2F2E41),
                  offset: Offset(0, 5),
                  blurRadius: 20)
            ],
            color: Color(0xFF2F2E41),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
              margin: const EdgeInsets.only(top: 20),
              child: SvgPicture.asset('assets/img/logo_sm.svg')),
          const SizedBox(
            height: 20,
          ),
          const MenuNavigationItem(
            iconUrl: 'assets/icons/home.svg',
            text: 'Home',
            active: true,
          ),
          const MenuNavigationItem(
            iconUrl: 'assets/icons/tutors.svg',
            text: 'Tutors',
            active: false,
          ),
          const MenuNavigationItem(
            iconUrl: 'assets/icons/accounts.svg',
            text: 'Accounts',
            active: false,
          ),
          const MenuNavigationItem(
            iconUrl: 'assets/icons/wallet.svg',
            text: 'Payments',
            active: false,
          ),
        ]));
  }
}
