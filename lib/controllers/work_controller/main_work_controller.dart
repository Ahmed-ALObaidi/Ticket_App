import 'dart:convert';

import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;

class MainWorkController extends GetxController {
  final String _baseUrl = 'https://jsonplaceholder.typicode.com/posts';
  late int _page = 0;
  final int _limit = 5;
  List _posts = [];
  List get posts => _posts;
  bool _isFirstLoading = false;
  bool get isFirstLoading => _isFirstLoading;
  bool _isLoadingMore = false;
  bool get isLoadingMore => _isLoadingMore;

  bool _hasNextPage = true;
  bool get hasNextPage => _hasNextPage;


  void firstLoad() async {
    _isFirstLoading = true;
    update();
    try {
      final response =
          await http.get(Uri.parse("$_baseUrl?_page=$_page&_limit=$_limit"));
      _posts = jsonDecode(response.body);
      update();
    } catch (e) {
      print(e);
    }
    _isFirstLoading = false;
    update();
  }

  Future<void> loadMore() async {
    if (_isFirstLoading == false &&
        _isLoadingMore == false &&
        _hasNextPage == true) {
      _isLoadingMore = true;
      update();
      _page += 1;
      update();
      try {
        final response =
            await http.get(Uri.parse('$_baseUrl?_page=$_page&_limit=$_limit'));
        final List fetchedPosts = jsonDecode(response.body);
        if (fetchedPosts.isNotEmpty) {
          _posts.addAll(fetchedPosts);
          update();
        } else {
          _hasNextPage = false;
          update();
        }
      } catch (e) {
        print(e);
      }
    }
    _isLoadingMore = false;
    update();
  }
}
