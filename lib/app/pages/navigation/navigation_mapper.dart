import 'package:flutter/material.dart';

final Map<int, GlobalKey<NavigatorState>> navigationMapper = {
  homeIndex : homePageState,
  exploreIndex : explorePageState,
  cartIndex : cartPageState,
  communityIndex : communityPageState,
};

final GlobalKey<NavigatorState> homePageState = GlobalKey();
final GlobalKey<NavigatorState> explorePageState = GlobalKey();
final GlobalKey<NavigatorState> cartPageState = GlobalKey();
final GlobalKey<NavigatorState> communityPageState = GlobalKey();

const int homeIndex = 0;
const int exploreIndex = 1;
const int cartIndex = 2; 
const int communityIndex = 3; 
