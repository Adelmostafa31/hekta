import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:hekta/core/constants/assets.dart';
import 'package:hekta/core/constants/constants.dart';

class myShop_layout_bodyScreen extends StatelessWidget {
  const myShop_layout_bodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AppBarElementOfMyShop(),
        MiddleElementOfMyShop(),
        ThirdElementOfMyShop()
      ],
    );
  }
}

class AppBarElementOfMyShop extends StatelessWidget {
  const AppBarElementOfMyShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingBuilder(
        start: 17,
        top: 26,
        end: 17,
      ),
      child: const Row(
        children: [
          Image(
            image: AssetImage(Assets.imagesLogo2),
            height: 55,
            width: 108,
          ),
          Spacer(),
          Column(
            children: [
              Image(image: AssetImage(Assets.profileHomeIcon)),
              SizedBox(
                width: 105,
                height: 26,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Foush-',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'Alex',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w300,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

// 27
class MiddleElementOfMyShop extends StatelessWidget {
  const MiddleElementOfMyShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingBuilder(start: 17, top: 27),
      child: Row(
        children: [
          Container(
            width: 131,
            height: 131,
            decoration: const ShapeDecoration(
              shape: OvalBorder(
                side: BorderSide(
                  width: 1,
                ),
              ),
            ),
            child: const Image(
              image: AssetImage(Assets.eduGamePhoto),
            ),
          ),
          const SizedBox(
            width: 25,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  SizedBox(
                    width: 97,
                    height: 28,
                    child: Text(
                      'Edugame',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  Image(
                    image: AssetImage(
                      Assets.shippingTruck,
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 64,
                height: 18,
                child: Text(
                  'ID:290-3',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w300,
                    height: 0,
                  ),
                ),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 21,
                    height: 17,
                    child: Text(
                      '4.3',
                      style: TextStyle(
                        color: Color(0xFFEB6E00),
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                      ),
                    ),
                  ),
                  RatingStars(
                    value: 2,
                    onValueChanged: (v) {
                      //
                      // setState(() {
                      //   value = v;
                      // });
                    },
                    starBuilder: (index, color) => Icon(
                      Icons.star,
                      color: color,
                    ),
                    starCount: 5,
                    starSize: 20,
                    valueLabelColor: const Color(0xff9b9b9b),
                    valueLabelTextStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 12.0,
                    ),
                    valueLabelRadius: 5,
                    maxValue: 5,
                    starSpacing: 2,
                    maxValueVisibility: true,
                    valueLabelVisibility: false,
                    animationDuration: const Duration(milliseconds: 1000),
                    valueLabelPadding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 1),
                    valueLabelMargin: const EdgeInsets.only(right: 8),
                    starOffColor: const Color(0xffe7e8ea),
                    starColor: const Color(0xFFEB6E00),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '126 reviews',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5400000214576721),
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 1.8,
                      letterSpacing: 0.16,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Container(
                    width: 170,
                    height: 37,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFFFB37D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.37),
                      ),
                    ),
                    child: const SizedBox(
                      width: 52,
                      height: 22,
                      child: Text(
                        '300000 ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 93,
                    height: 37.41,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFFF7E22),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.37),
                      ),
                    ),
                    child: const Center(
                      child: SizedBox(
                        width: 60.24,
                        height: 22,
                        child: Text(
                          'Checked',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Arial',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class ThirdElementOfMyShop extends StatelessWidget {
  const ThirdElementOfMyShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingBuilder(top: 25,start: 17,end: 17),
      child: Row(
        children: [
          Container(
            width: 98,
            height: 26,
            decoration: ShapeDecoration(
              color: const Color(0xFFFF7E22),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 70,
                  height: 17,
                  child: Text(
                    'Add item',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w300,
                      height: 0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                  height: 10,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 4,
                        top: 0,
                        child: Container(
                          width: 2,
                          height: 10,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(1)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 4,
                        child: Transform(
                          transform: Matrix4.identity()
                            ..translate(0.0, 0.0)
                            ..rotateZ(1.57),
                          child: Container(
                            width: 2,
                            height: 10,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Container(
            width: 71,
            height: 26,
            decoration: ShapeDecoration(
              color: const Color(0xFFD9D9D9),
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            ),
            child: const Center(
              child: SizedBox(
                width: 39,
                height: 17,
                child: Text(
                  'Items',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 71,
            height: 26,
            decoration: ShapeDecoration(
              color: const Color(0x7FD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  4,
                ),
              ),
            ),
            child: const Center(
              child: SizedBox(
                width: 45,
                height: 16,
                child: Text(
                  'Offers',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w300,
                    height: 0,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
