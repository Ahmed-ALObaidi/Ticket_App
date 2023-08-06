import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:newdishticket/controllers/work_controller/main_work_controller.dart';

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  MainWorkController controller = Get.find();
  late ScrollController scrollController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.firstLoad();
    scrollController = ScrollController()..addListener(() => controller.loadMore());
    print(controller.posts.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {

                return Container(color: Colors.redAccent,
                  child: ListTile(
                    title: Text(controller.posts[index]['title']),
                  ),
                );

            },
            childCount: controller.posts.length ,
          ),


          // delegate:  SliverChildBuilderDelegate((BuildContext context,int index) {
          //   return GetBuilder<MainWorkController>(
          //     builder: (mainWorkController) {
          //       return mainWorkController.isFirstLoading
          //           ? CircularProgressIndicator()
          //           : Expanded(
          //             child: ListView.builder(
          //               itemBuilder: (context, index) {
          //                 return
          //                   Container(color: Colors.redAccent,
          //                     child: ListTile(textColor: Colors.white,
          //                       title: Text(controller.posts[index]['title']),
          //                       subtitle: Text(controller.posts[index]['body']),
          //                     ),
          //                   );
          //               },itemCount: mainWorkController.posts.length,controller: scrollController,
          //             ),
          //           );
          //     },
          //   );
          // },),
        ),
      ],
    ));
  }



}