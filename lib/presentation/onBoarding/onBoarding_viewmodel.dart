import 'dart:async';

import 'package:my_advanced_flutter/domain/model.dart';
import 'package:my_advanced_flutter/presentation/base/base_viewmodel.dart';
import 'package:my_advanced_flutter/presentation/resources/assets_manager.dart';
import 'package:my_advanced_flutter/presentation/resources/strings_manager.dart';

class OnboardingViewmodel extends BaseViewmodel implements OnboardingViewmodelInputs,OnboardingViewmodelOutputs{

  // stram controller
 final StreamController _streamController = StreamController<SliderViewObject>();

   late final List<SliderObject> _list;
  
    int _currentIndex = 0;


  // inputs
  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void start() {
    _list = _getSliderData();
    // sent this data to the view
    _postDataToView();
  }
  
  @override
  int goNext() {
       int nextIndex = _currentIndex ++;
    if(nextIndex >= _list.length){
      _currentIndex = 0;
    }
    return _currentIndex;
  }
  
  @override
  int goPrevious() {
       int previousIndex = _currentIndex --;
    if(previousIndex == -1){
      _currentIndex = _list.length - 1;
    }
    return _currentIndex;
  }
  
  @override
  void onPageChanged(int index) {
    _currentIndex = index;
    _postDataToView();
  }
  
  @override
  Sink get inputSliderViewObjects => _streamController.sink;
  

  // outputs
  @override
  Stream<SliderViewObject> get outputSliderViewObject => _streamController.stream.map((sliderViewObject) => sliderViewObject);

  // private functions
    List<SliderObject> _getSliderData() => [
        SliderObject(AppStrings.onBoardingTitle1,
            AppStrings.onBoardingSubTitle1, ImageAssets.onboarding1),
        SliderObject(AppStrings.onBoardingTitle2,
            AppStrings.onBoardingSubTitle2, ImageAssets.onboarding2),
        SliderObject(AppStrings.onBoardingTitle3,
            AppStrings.onBoardingSubTitle3, ImageAssets.onboarding3),
        SliderObject(AppStrings.onBoardingTitle4,
            AppStrings.onBoardingSubTitle4, ImageAssets.onboarding4),
      ];

      _postDataToView(){
        inputSliderViewObjects.add(SliderViewObject(_list[_currentIndex], _list.length, _currentIndex));
      }


}

// inputs means the order that the view model will recieve from view
abstract class OnboardingViewmodelInputs{
  void goNext();
  void goPrevious();
  void onPageChanged(int index);


  Sink get inputSliderViewObjects; // this is the way to add dta to the stream .. stream input
}

// outputs means the results that will be sent from the view model to view
abstract class OnboardingViewmodelOutputs{
  Stream<SliderViewObject> get outputSliderViewObject;
}

class SliderViewObject{
  SliderObject sliderObject;
  int numOfSlides;
  int currentIndex;

  SliderViewObject(this.sliderObject, this.numOfSlides, this.currentIndex);
}