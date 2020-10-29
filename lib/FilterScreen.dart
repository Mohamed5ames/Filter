import 'file:///C:/Users/moham/Downloads/Compressed/Flym/filter/lib/Widgets/CatogaryButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Widgets/CategoryDropDown.dart';
import 'Widgets/AllWidthDropDown.dart';
import 'Widgets/TypeText.dart';
import 'Widgets/genderButton.dart';
import 'package:device_preview/device_preview.dart';

String val1 = 'Sports';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  String category = 'Sports';
  String subCategory = 'Boxing';
  String location = 'Amman,Jordan';
  String coachLanguage = 'Arabic';
  bool checkBox1 = true;
  bool checkBox = false;
  void check(bool val2) {
    setState(() {
      checkBox = val2;
    });
  }

  void check1(bool val1) {
    setState(() {
      checkBox1 = val1;
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 50.h),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            'Filter',
                            style: TextStyle(
                              fontFamily: 'Segoue',
                              fontSize: 90.sp,
                              color: Colors.deepOrangeAccent,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Segoue',
                              fontSize: 50.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    TypeText(
                      theText: 'Service type',
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CategoryButton(
                          labelColor: Colors.black,
                          buttonText: 'Sharing',
                          buttonColor: Color(0xffeeeeee),
                        ),
                        CategoryButton(
                          labelColor: Colors.black,
                          buttonText: 'Collective',
                          buttonColor: Color(0xffeeeeee),
                        ),
                        CategoryButton(
                          labelColor: Colors.black,
                          buttonText: 'Individual',
                          buttonColor: Color(0xffeeeeee),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        TypeText(theText: 'Categories'),
                        SizedBox(
                          width: 355.w,
                        ),
                        TypeText(theText: 'Sub-Categories'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CategoryDropDown(
                          dropdownValue: category,
                          categoryItems: ['Sports', 'Other'],
                          changing: (String newValue) {
                            setState(() {
                              category = newValue;
                            });
                          },
                        ),
                        CategoryDropDown(
                          dropdownValue: subCategory,
                          categoryItems: ['Boxing', 'Running'],
                          changing: (String newValue) {
                            setState(() {
                              subCategory = newValue;
                            });
                          },
                        ),
                      ],
                    ),
                    TypeText(theText: 'Service location'),
                    AllWidthDropDown(
                      dropdownValue: location,
                      categoryItems: [
                        'Amman,Jordan',
                        'Cairo,Egypt',
                        'Mecca,KSA'
                      ],
                      changing: (String newValue) {
                        setState(() {
                          location = newValue;
                        });
                      },
                    ),
                    TypeText(theText: 'Prices'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'From',
                          style: TextStyle(
                            fontFamily: 'segoue',
                            fontSize: 60.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Container(
                          width: 300.w,
                          margin: EdgeInsets.only(
                            right: 15,
                            left: 15,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xffeeeeee),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 12),
                            child: Center(
                              child: Text(
                                '100\$',
                                style: TextStyle(
                                  fontSize: 60.sp,
                                  fontFamily: 'segoue',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'To',
                          style: TextStyle(
                              fontFamily: 'segoue',
                              fontSize: 60.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        Container(
                          width: 300.w,
                          margin: EdgeInsets.only(
                            left: 15,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xffeeeeee),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 12),
                            child: Center(
                              child: Text(
                                '200\$',
                                style: TextStyle(
                                  fontSize: 60.sp,
                                  fontFamily: 'segoue',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TypeText(theText: 'Coach language'),
                    AllWidthDropDown(
                      dropdownValue: coachLanguage,
                      categoryItems: ['Arabic', 'English', 'French'],
                      changing: (String newValue) {
                        setState(() {
                          coachLanguage = newValue;
                        });
                      },
                    ),
                    TypeText(theText: 'Service gender'),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GenderButton(
                          labelColor: Colors.black,
                          buttonText: 'Men',
                          buttonColor: Color(0xffeeeeee),
                        ),
                        GenderButton(
                          labelColor: Colors.black,
                          buttonText: 'Women',
                          buttonColor: Color(0xffeeeeee),
                        ),
                        GenderButton(
                          labelColor: Colors.black,
                          buttonText: 'Children',
                          buttonColor: Color(0xffeeeeee),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: checkBox,
                          onChanged: check,
                          activeColor: Colors.deepOrangeAccent,
                          checkColor: Colors.white,
                        ),
                        Text(
                          'Highest request',
                          style: TextStyle(
                            fontFamily: 'Segoue',
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 60.sp,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: checkBox1,
                          onChanged: check1,
                          activeColor: Colors.deepOrangeAccent,
                          checkColor: Colors.white,
                        ),
                        Text(
                          'Highest rate',
                          style: TextStyle(
                            fontFamily: 'Segoue',
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 60.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: 150.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 10.0,
                        spreadRadius: 1.0,
                        offset: Offset(0, -12) // shadow direction: bottom right
                        )
                  ],
                ),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: FlatButton(
                      shape: StadiumBorder(),
                      onPressed: () {},
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 120, vertical: 10),
                        child: Text(
                          'Apply',
                          style: TextStyle(
                              fontFamily: 'segoue',
                              fontSize: 60.sp,
                              color: Colors.white),
                        ),
                      ),
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
