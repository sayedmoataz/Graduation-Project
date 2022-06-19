
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';


Widget mycarouseelslider(imglist, {currentPage}) =>  CarouselSlider(
    items: List.generate(
      imglist.length,
      (index) => FullScreenWidget(
        child: InteractiveViewer(
          panEnabled: false,
          boundaryMargin: const EdgeInsets.all(80),
          minScale: 0.5,
          maxScale: 15,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(imglist[index])
          ),
        ),
      ),
    ),

      //Slider Container properties
      options: CarouselOptions(
        height: 180.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 1000),
        viewportFraction: 0.60,
      ),
);