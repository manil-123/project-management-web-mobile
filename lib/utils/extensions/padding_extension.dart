import 'package:flutter/material.dart';

/// Padding Extensions
extension PaddingX on Widget {
  Padding pL(double l) =>
      Padding(padding: EdgeInsets.only(left: l), child: this);

  Padding pR(double r) =>
      Padding(padding: EdgeInsets.only(right: r), child: this);

  Padding pT(double t) =>
      Padding(padding: EdgeInsets.only(top: t), child: this);

  Padding pB(double b) =>
      Padding(padding: EdgeInsets.only(bottom: b), child: this);

  Padding pTB(double t, double b) =>
      Padding(padding: EdgeInsets.only(top: t, bottom: b), child: this);

  Padding pX(double x) =>
      Padding(padding: EdgeInsets.symmetric(horizontal: x), child: this);

  Padding pY(double y) =>
      Padding(padding: EdgeInsets.symmetric(vertical: y), child: this);

  Padding pXY(double x, double y) => Padding(
        padding: EdgeInsets.symmetric(horizontal: x, vertical: y),
        child: this,
      );

  Padding pad(double all) => Padding(
        padding: EdgeInsets.symmetric(vertical: all, horizontal: all),
        child: this,
      );

  SliverToBoxAdapter get toSliverBox => SliverToBoxAdapter(
        child: this,
      );
}
