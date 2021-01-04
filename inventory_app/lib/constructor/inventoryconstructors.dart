

import 'package:flutter/cupertino.dart';

class Spares {
  final String item;
  final String descripition;
  final String comment;
  final int minorder;
  final int date;
  final int quantity;


  const Spares(
  {
    @required this.item,
    this.descripition,
    this.comment,
    this.date,
    @required this.minorder,
    @required this.quantity,
}
      );



}