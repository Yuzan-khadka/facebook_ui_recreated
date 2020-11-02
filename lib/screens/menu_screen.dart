import 'package:facebook_responsive_ui/data/data.dart';
import 'package:facebook_responsive_ui/widgets/more_option_list.dart';
import 'package:facebook_responsive_ui/widgets/responsive.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: !Responsive.isDesktop(context)
          ? MoreOptionsList(currentUser: currentUser)
          : null,
      color: Colors.white,
    );
  }
}
