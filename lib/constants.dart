import 'package:flutter/material.dart';

import './tabs/home_tab.dart';
import './tabs/media_tab.dart';
import './tabs/menu_tab.dart';
import './tabs/statistics_tab.dart';
import './tabs/table_tab.dart';

const Color kPrimaryColor = Color(0xff0F1737);
const Color kScaffoldBackgroundColor = Color(0xffeeeeee);
const Color kUnSelectedColor = Color(0xff8E8E93);

const TextStyle kBodyText = TextStyle(
  fontFamily: 'Almarai',
  color: Colors.black,
  fontWeight: FontWeight.w400,
  height: 1.5,
);

const TextStyle kButtonText = TextStyle(
  fontFamily: 'Almarai',
  color: Colors.white,
  fontSize: 22,
  fontWeight: FontWeight.w200,
);

List<Widget> kBottomNavBarList = [
  MenuTab(),
  StatisticsTab(),
  MediaTab(),
  TableTab(),
  HomeTab(),
];

List<BottomNavigationBarItem> kBottomNavBarItems = [
  BottomNavigationBarItem(
      icon: ImageIcon(AssetImage('assets/Glyph5.png')), title: Text("المزيد")),
  BottomNavigationBarItem(
      icon: ImageIcon(AssetImage('assets/Glyph4.png')),
      title: Text("احصائيات كاملة")),
  BottomNavigationBarItem(
      icon: ImageIcon(AssetImage('assets/Glyph3.png')),
      title: Text("المركز الإعلامي")),
  BottomNavigationBarItem(
      icon: ImageIcon(AssetImage('assets/Glyph2.png')),
      title: Text("جدول الدوري")),
  BottomNavigationBarItem(
      icon: ImageIcon(AssetImage('assets/Glyph.png')), title: Text("الرئيسية")),
];

List<Tab> kTabs = [
  Tab(child: Text("الفيديوهات")),
  Tab(child: Text("الصور")),
  Tab(child: Text("الأخبار")),
];
