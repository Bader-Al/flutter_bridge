library flutter_bridge;

import 'package:flutter/material.dart';

abstract class Bridged {}

abstract class BridgedFunctions implements Bridged {}

abstract class BridgedNavigationFunctions implements Bridged {}

//! todo : params should go (thts the point of provider)
abstract class BridgedParameters implements Bridged {}

abstract class BridgedControllers implements Bridged {}

//? the bridges

abstract class Bridge {} //! only contains Bridged[X]

abstract class InheritedBridge extends InheritedWidget implements Bridge {
  const InheritedBridge({required Widget child, Key? key})
      : super(child: child, key: key);
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}

abstract class FunctionsBridge implements Bridge {
  abstract final BridgedFunctions? functions;
}

abstract class NavigationFunctionsBridge implements Bridge {
  abstract final BridgedNavigationFunctions? navigationFunctions;
}
