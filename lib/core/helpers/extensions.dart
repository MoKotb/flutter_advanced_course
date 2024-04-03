import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  void pushNamed(String routeName) => Navigator.of(this).pushNamed(routeName);

  void pushReplacementNamed(
    String routeName, {
    Object? arguments,
  }) =>
      Navigator.of(this).pushReplacementNamed(
        routeName,
        arguments: arguments,
      );

  void pushNamedAndRemoveUntil(
    String routeName, {
    required RoutePredicate predicate,
    Object? arguments,
  }) =>
      Navigator.of(this).pushNamedAndRemoveUntil(
        routeName,
        predicate,
        arguments: arguments,
      );

  void pop() => Navigator.of(this).pop();
}
