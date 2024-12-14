import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_advanced_flutter/presentation/resources/assets_manager.dart';
import 'package:my_advanced_flutter/presentation/resources/color_manager.dart';
import 'package:my_advanced_flutter/presentation/resources/strings_manager.dart';
import 'package:my_advanced_flutter/presentation/resources/values_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {

  late final List<SliderObject> _list = _getSliderData();

  PageController _pageController = PageController(initialPage: 0);

  int _currentIndex = 0;

  List<SliderObject> _getSliderData() => [
    SliderObject(AppStrings.onBoardingTitle1, AppStrings.onBoardingSubTitle1, ImageAssets.onboarding1),
    SliderObject(AppStrings.onBoardingTitle2, AppStrings.onBoardingSubTitle2, ImageAssets.onboarding2),
    SliderObject(AppStrings.onBoardingTitle3, AppStrings.onBoardingSubTitle3, ImageAssets.onboarding3),
    SliderObject(AppStrings.onBoardingTitle4, AppStrings.onBoardingSubTitle4, ImageAssets.onboarding4),


  ];



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.white,
        elevation: AppSize.s1_5,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManager.white,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark
        ),
      ),
      backgroundColor: ColorManager.white,
      body: PageView.builder(
        controller: _pageController,
        itemCount: _list.length,
        onPageChanged: (index){
         setState(() {
           _currentIndex = index;
         });
        },
        itemBuilder: (context, index){
          // return onboarding page
          return OnBoardingWidget(_list[index]);
        }),
        bottomSheet: Container(
          color: ColorManager.white,
          height: AppSize.s100,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: (){
                    
                  }, 
                child: Text(AppStrings.skip, textAlign: TextAlign.end,)),
              ),

              // add layout for indicator and arrows
            ],
          ),
        ),
    );
  }
}


class SliderObject{
  String title;
  String subTitle;
  String image;
  SliderObject(this.title,this.subTitle,this.image);
}


class OnBoardingWidget extends StatelessWidget {
  final SliderObject _sliderObject;
  const OnBoardingWidget(this._sliderObject,{super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
       const SizedBox(
          height: AppSize.s40,
        ),
        Padding(
          padding: const EdgeInsets.all(AppSize.s8),
          child: Text(_sliderObject.title,textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleLarge,),
        ),
        Padding(
          padding: const EdgeInsets.all(AppSize.s8),
          child: Text(_sliderObject.subTitle,textAlign: TextAlign.center,style: Theme.of(context).textTheme.headlineLarge,),
        ),
         const SizedBox(
          height: AppSize.s60,
        ),
        // image widget
        SvgPicture.asset(_sliderObject.image)

      ],
    );
  }
}