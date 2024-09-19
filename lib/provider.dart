
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:provider_project/models.dart';
import 'package:provider_project/services.dart';

class ProviderOperation extends ChangeNotifier{
  final Service = ProviderService();
  bool isLoading = false;
  List<Listusers> _posts=[];
  List<Listusers> get posts => _posts;
  getAllPosts()async{
    isLoading=true;
    notifyListeners();
    final res =await Service.getAll();
    _posts = res;
    isLoading=false;
    notifyListeners();

  }
  
}

