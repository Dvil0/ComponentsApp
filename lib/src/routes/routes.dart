import 'package:flutter/material.dart';
import 'package:components/src/views/alert_view.dart';
import 'package:components/src/views/avatar_view.dart';
import 'package:components/src/views/card_view.dart';
import 'package:components/src/views/home_view.dart';
import 'package:components/src/views/animated_container_view.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){

  return <String, WidgetBuilder>{
    '/'       : ( BuildContext context ) => HomeView(),
    'alert'   : ( BuildContext context ) => AlertView(),
    'avatar'  : ( BuildContext context ) => AvatarView(),
    'card'    : ( BuildContext context ) => CardView(),
    'animatedContainer' : ( BuildContext context ) => AnimatedContainerView()
  };
}