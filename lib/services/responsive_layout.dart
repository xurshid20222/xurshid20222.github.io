import 'package:flutter/material.dart';

import '../pages/desctop/desktop_site.dart';
import '../pages/mobile/mobile_site.dart';
import '../pages/tablet/tablet_site.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      if(constraints.maxWidth < 600){
        return const MobileSite();
      }else if(constraints.maxWidth < 1000){
        return const TabletSite();
      }else{
        return const DesktopSite();
      }
    });
  }
}
