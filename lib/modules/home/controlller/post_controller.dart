import 'dart:convert';

import 'package:flutter/material.dart'; // Ensure this import is present
import 'package:myapp/modules/home/model/post_model.dart';
import 'package:myapp/modules/home/service/post_service.dart';

class PostController extends ChangeNotifier {
  final PostService _postService = PostService();
  List<PostModel> _post = [];

  List<PostModel> get post => _post;

  set post(List<PostModel> value) {
    _post = List.from(value);
    notifyListeners();
  } // Assuming this list holds your PostModel objects

  Future<void> getPosts() async {
    try {
      dynamic data = await _postService.getPosts();
      post = List<PostModel>.from(data.map((x) => PostModel.fromJson(x)));
      // Notify listeners if this controller is used in a widget
      // notifyListeners();
    } on Exception catch (e) {
      print(e);
      // Handle the error, e.g., log it or show an error message
      rethrow;
    }
  }
}
