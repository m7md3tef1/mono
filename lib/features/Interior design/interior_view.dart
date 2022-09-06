import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mono/features/Interior%20design/view.dart';
class InteriorView extends StatefulWidget {
   const InteriorView({Key? key}) : super(key: key);

  @override
  State<InteriorView> createState() => _InteriorViewState();
}

class _InteriorViewState extends State<InteriorView> {
int index=1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 145.h,
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: 37.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:   [

                  Center(
                      child: Text(
                        'Interior design',

                        style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500,),
                      )),
                ],
              ),
              SizedBox(height: 12.h,),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  height: 50.h,
                  width: double.infinity,
                  child: ListView(scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  index = 1;
                                });
                              },
                              child: Container(
                                height: 28,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: index == 1 ?  Colors.orangeAccent : Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    'Design of children\'s rooms',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color:
                                        index == 1 ? Colors.white : Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  index = 2;
                                });
                              },
                              child: Container(
                                height: 28,
                                width: 111,
                                decoration: BoxDecoration(

                                  color: index == 2 ? Colors.orangeAccent : Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    'Living room design',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color:
                                        index == 2 ? Colors.white : Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  index = 3;
                                });
                              },
                              child: Container(
                                height: 28,
                                width: 111,
                                decoration: BoxDecoration(
                                  color: index == 3 ? Colors.orangeAccent : Colors.white,

                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    'Living room design',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color:
                                        index == 3 ? Colors.white : Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  index = 4;
                                });
                              },
                              child: Container(
                                height: 28,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: index == 4 ? Colors.orangeAccent : Colors.white,

                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    'Badroom design',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color:
                                        index == 4 ? Colors.white : Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
            ],
          ),
        ),
        if(index==1)const ChildrenRoom()
        else if(index==2)const Center(child: Text('2222'),)
        else if(index==3)const Center(child: Text('333'),)
          else if(index==4)const Center(child: Text('44444'),),
      ],
    );
  }
}
