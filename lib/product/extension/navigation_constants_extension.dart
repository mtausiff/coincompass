import 'package:flutter/material.dart';
import 'package:tausifcoincompass/pages/coindetails/view/coin_details_view.dart';
import 'package:tausifcoincompass/pages/coinlisting/view/coin_listing_view.dart';
import 'package:tausifcoincompass/pages/contactus/view/contactus_view.dart';
import 'package:tausifcoincompass/pages/home/view/home_view.dart';
import 'package:tausifcoincompass/pages/home/widgets/video_slider/video_player_impl.dart';
import 'package:tausifcoincompass/pages/login/view/login_view.dart';
import 'package:tausifcoincompass/pages/register/view/register_view.dart';

import '../../pages/oldhome/view/oldhome_view.dart';
import '../../pages/splash/view/splash_view.dart';
import '../constants/navigation_constants.dart';

extension NavigationConstantsExtension on NavigationConstants {
  String get pageName => "/$name";
  Widget get pageWidget => switch (this) {
        NavigationConstants.splash => Splash(),
        NavigationConstants.oldhome => OldHome(),
        NavigationConstants.home => Home(),
        NavigationConstants.login => Login(),
        NavigationConstants.register => Register(),
        NavigationConstants.coindetails => CoinDetails(),
        NavigationConstants.coinlisting => CoinListing(),
        NavigationConstants.contactus => ContactUs(),
        NavigationConstants.videopage => const VideoPlayerPage(),
      };
}
