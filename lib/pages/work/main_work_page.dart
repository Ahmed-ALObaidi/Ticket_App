import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:newdishticket/controllers/work_controller/main_work_controller.dart';
import 'package:newdishticket/utilize/app_colors.dart';
import 'package:newdishticket/utilize/dimentions.dart';
import 'package:newdishticket/widgets/text_widget.dart';

class MainWorkPage extends StatefulWidget {
  const MainWorkPage({Key? key}) : super(key: key);

  @override
  State<MainWorkPage> createState() => _MainWorkPageState();
}

class _MainWorkPageState extends State<MainWorkPage> {
  MainWorkController controller = Get.find();
  late ScrollController scrollController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.firstLoad();
    scrollController = ScrollController()
      ..addListener(() => controller.loadMore());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        title: Center(
          child: TextWidget(
            text: 'المهام',
            fontSize: 22,
          ),
        ),
        toolbarHeight: 110,
        backgroundColor: AppColors.chooseCompanyCardColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              // Work Date
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 35,
                      width: 90,
                      decoration: BoxDecoration(
                          color: AppColors.chooseCompanyCardColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: TextWidget(
                        text: 'اخر 30 يوم',
                      )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.chooseCompanyCardColor,
                          borderRadius: BorderRadius.circular(5)),
                      height: 35,
                      width: 90,
                      child: Center(
                          child: TextWidget(
                        text: 'اخر 7 ايام',
                      )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5)),
                      height: 35,
                      width: 90,
                      child: Center(
                          child: TextWidget(
                        text: 'مهام اليوم',
                      )),
                    ),
                  ],
                ),
              ),
              // Available Work
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Stack(
                              children: [
                                Positioned(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey.shade700,
                                    radius: 14,
                                  ),
                                ),
                                const Positioned(
                                  left: 10,
                                  right: 11,
                                  bottom: 0,
                                  top: -2,
                                  child: TextWidget(
                                    text: '5',
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 130,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextWidget(
                                  text: 'المهام المتاحة',
                                  fontSize: 16,
                                ),
                                Icon(
                                  Iconsax.briefcase,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 10),
                          height: 145,
                          decoration: BoxDecoration(
                              color: AppColors.chooseCompanyCardColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              // Status and Date
                              Container(
                                margin: EdgeInsets.only(
                                    left: 20, right: 20, top: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: TextWidget(
                                        textColor: Colors.grey,
                                        text: "2001/7/6 11:00 AM",
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            child: TextWidget(
                                              text: "قيد الموافقة",
                                            ),
                                            margin: EdgeInsets.only(right: 8),
                                          ),
                                          Container(
                                            height: 27,
                                            width: 27,
                                            decoration: BoxDecoration(
                                                color: Colors.yellow.shade700,
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Details
                              Container(
                                margin: EdgeInsets.only(
                                    top: 8, left: 20, right: 20, bottom: 15),
                                height: 80,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                    color: AppColors.mainColor,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Container(
                                    margin: const EdgeInsets.only(
                                      top: 3,
                                      right: 5,
                                    ),
                                    child: const TextWidget(
                                        text:
                                            'ضعف كبير في الخدمة وفصلات في الراوتر ',
                                        textAlign: TextAlign.right)),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Stack(
                              children: [
                                Positioned(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey.shade700,
                                    radius: 14,
                                  ),
                                ),
                                const Positioned(
                                  left: 10,
                                  right: 11,
                                  bottom: 0,
                                  top: -2,
                                  child: TextWidget(
                                    text: '25',
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 130,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextWidget(
                                  text: 'المهام المنجزة',
                                  fontSize: 16,
                                ),
                                Icon(
                                  Iconsax.briefcase,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    GetBuilder<MainWorkController>(
                      builder: (mainWorkController) {
                        return mainWorkController.isFirstLoading
                            ? CircularProgressIndicator()
                            : Column(
                              children: [
                                GetBuilder<MainWorkController>(
                                  builder: (mainWorkController) {
                                return mainWorkController.isFirstLoading
                                    ? CircularProgressIndicator()
                                    : Container(
                                  height: 550,
                                      child: ListView.builder(
                                        itemBuilder:
                                            (context, index) {
                                          return Container(
                                            child:
                                            ListView.builder(
                                              shrinkWrap: true,
                                              physics: NeverScrollableScrollPhysics(),
                                              itemCount: 5,
                                              itemBuilder: (context, index) {
                                                return Container(
                                                  margin: EdgeInsets.only(bottom: 10),
                                                  height: 145,
                                                  decoration: BoxDecoration(
                                                      color: AppColors.chooseCompanyCardColor,
                                                      borderRadius: BorderRadius.circular(10)),
                                                  child: Column(
                                                    children: [
                                                      // Status and Date
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            left: 20, right: 20, top: 15),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Container(
                                                              child: TextWidget(
                                                                textColor: Colors.grey,
                                                                text: "2001/7/6 11:00 AM",
                                                              ),
                                                            ),
                                                            Container(
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                    child: TextWidget(
                                                                      text: "مكتمل",
                                                                    ),
                                                                    margin: EdgeInsets.only(right: 8),
                                                                  ),
                                                                  Container(
                                                                    height: 27,
                                                                    width: 27,
                                                                    decoration: BoxDecoration(
                                                                        color: Colors.yellow.shade700,
                                                                        borderRadius:
                                                                        BorderRadius.circular(5)),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      // Details
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            top: 8, left: 20, right: 20, bottom: 15),
                                                        height: 80,
                                                        width: double.maxFinite,
                                                        decoration: BoxDecoration(
                                                            color: AppColors.mainColor,
                                                            borderRadius: BorderRadius.circular(5)),
                                                        child: Container(
                                                            margin: const EdgeInsets.only(
                                                              top: 3,
                                                              right: 5,
                                                            ),
                                                            child:  ListTile(
                                                                textColor: Colors.white,
                                                                title: Text(controller
                                                                        .posts[index]
                                                                    ['title']),

                                                              ),),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                          );
                                        },
                                        itemCount: mainWorkController
                                            .posts.length,
                                        controller: scrollController,
                                      ),
                                    );
                                  },
                                ),
                                if (controller.isLoadingMore == true)
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        top: 10, bottom: 40),
                                    child: Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  ),
                              ],
                            );
                      },
                    )
                  ],
                ),
              )
              // Done Work
            ],
          ),
        ),
      ),

    );
  }
}
