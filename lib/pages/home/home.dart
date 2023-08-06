import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:newdishticket/pages/home/home_page.dart';
import 'package:newdishticket/pages/work/main_work_page.dart';
import 'package:newdishticket/pages/work/work_details.dart';
import 'package:newdishticket/utilize/app_colors.dart';
import 'package:newdishticket/widgets/text_widget.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  List<Widget> pages = [
    HomePage(),
    WorkDetails(),
    MainWorkPage(),
    Center(
      child: Text("444"),
    ),
    Center(
      child: Text("555"),
    ),
  ];

  PageController controller = PageController();

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.mainColor,
        body:

        Center(
          child: pages[_selectedIndex],
        ),
        bottomNavigationBar: AnimatedContainer(duration: Duration(seconds: 5),curve: Curves.linear,
          child: BottomNavigationBar(
            unselectedItemColor: Colors.blue,
            currentIndex: _selectedIndex,
            onTap: _onTap,
            selectedFontSize: 0,
            unselectedFontSize: 0,
            showSelectedLabels: false,
            unselectedIconTheme: IconThemeData(color: Colors.grey),
            selectedIconTheme: IconThemeData(color: Colors.blue),
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: false,
            elevation: 0,
            enableFeedback: false,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  width: double.maxFinite,
                  height: 75,
                  color: AppColors.chooseCompanyCardColor,
                  child: Stack(
                    children: [
                      _selectedIndex == 0
                          ? Center(
                              child: Container(
                              margin: EdgeInsets.only(
                                bottom: 70,
                              ),
                              height: 5,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5))),
                            ))
                          : Container(),
                      _selectedIndex == 0
                          ? Container(
                              child: Center(
                                  child: Image.asset(
                                      'assets/images/icon-vector.png')),
                            )
                          : Container(),
                      Center(
                        child: Icon(Iconsax.setting_3, size: 40),
                      )
                    ],
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: double.maxFinite,
                  height: 75,
                  color: AppColors.chooseCompanyCardColor,
                  child: Stack(
                    children: [
                      _selectedIndex == 1
                          ? Center(
                              child: Container(
                              margin: EdgeInsets.only(bottom: 70),
                              height: 5,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5))),
                            ))
                          : Container(),
                      _selectedIndex == 1
                          ? Container(
                              child: Center(
                                  child: Image.asset(
                                      'assets/images/icon-vector.png')),
                            )
                          : Container(),
                      Center(
                        child: Icon(Iconsax.finger_scan, size: 40),
                      )
                    ],
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: double.maxFinite,
                  height: 75,
                  color: AppColors.chooseCompanyCardColor,
                  child: Stack(
                    children: [
                      _selectedIndex == 2
                          ? Center(
                              child: Container(
                              margin: EdgeInsets.only(bottom: 70),
                              height: 5,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5))),
                            ))
                          : Container(),
                      _selectedIndex == 2
                          ? Container(
                              child: Center(
                                  child: Image.asset(
                                      'assets/images/icon-vector.png')),
                            )
                          : Container(),
                      Center(
                        child: Icon(Iconsax.cpu, size: 40),
                      )
                    ],
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: double.maxFinite,
                  height: 75,
                  color: AppColors.chooseCompanyCardColor,
                  child: Stack(
                    children: [
                      _selectedIndex == 3
                          ? Center(
                              child: Container(
                              margin: EdgeInsets.only(bottom: 70),
                              height: 5,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5))),
                            ))
                          : Container(),
                      _selectedIndex == 3
                          ? Container(
                              child: Center(
                                  child: Image.asset(
                                      'assets/images/icon-vector.png')),
                            )
                          : Container(),
                      Center(
                        child: Icon(Iconsax.briefcase, size: 40),
                      )
                    ],
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: double.maxFinite,
                  height: 75,
                  color: AppColors.chooseCompanyCardColor,
                  child: Stack(
                    children: [
                      _selectedIndex == 4
                          ? Center(
                              child: Container(
                              margin: EdgeInsets.only(bottom: 70),
                              height: 5,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5))),
                            ))
                          : Container(),
                      _selectedIndex == 4
                          ? Container(
                              child: Center(
                                  child: Image.asset(
                                      'assets/images/icon-vector.png')),
                            )
                          : Container(),
                      Center(
                        child: Icon(Iconsax.category, size: 40),
                      )
                    ],
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ));
  }
}
