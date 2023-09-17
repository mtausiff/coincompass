import 'package:flutter/material.dart';
import 'package:tausifcoincompass/pages/general/coindetails/view/coin_details_view.dart';
import 'package:tausifcoincompass/pages/general/coinlisting/view/coin_listing_view.dart';
import 'package:tausifcoincompass/pages/general/contactus/view/contactus_view.dart';
import 'package:tausifcoincompass/pages/general/home/view/home_view.dart';
import 'package:tausifcoincompass/pages/general/login/view/login_view.dart';
import 'package:tausifcoincompass/pages/general/register/view/register_view.dart';

import '../../pages/general/oldhome/view/oldhome_view.dart';
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
      };
}
