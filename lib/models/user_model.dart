import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class UserModel extends Equatable {
  final String id;
  final String email;
  final String name;
  final String hobby;
  final int balance;

  UserModel({
    required this.id,
    required this.email,
    required this.name,
    required this.hobby,
    this.balance = 0,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [id, email, name, hobby, balance];
}