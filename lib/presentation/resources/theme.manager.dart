import 'package:flutter/material.dart';
import 'package:my_advanced_flutter/presentation/resources/color_manager.dart';
import 'package:my_advanced_flutter/presentation/resources/font_manager.dart';
import 'package:my_advanced_flutter/presentation/resources/styles_manager.dart';
import 'package:my_advanced_flutter/presentation/resources/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(

      // main colors of the app
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.primaryOpacity70,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey1, // used in case of disbled buttons
      hintColor: ColorManager.grey,
      splashColor: ColorManager.primaryOpacity70,

      //card view theme
      cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSize.s4,
      ),

      // app bar theme
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: AppSize.s4,
        shadowColor: ColorManager.primaryOpacity70,
        titleTextStyle:
            getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16),
      ),

      // button theme
      buttonTheme: ButtonThemeData(
        shape: StadiumBorder(),
        disabledColor: ColorManager.grey1,
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.primaryOpacity70,
      ),

      // elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: ColorManager.white),
        backgroundColor: ColorManager.primary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s12),),
      ),),

      // text theme
      textTheme: TextTheme(
        headlineLarge: getSemiBoldStyle(color: ColorManager.darkGrey,fontSize: FontSize.s16),
        headlineMedium: getMediumStyle(color: ColorManager.lightGrey, fontSize: FontSize.s14),
        headlineSmall: getRegularStyle(color: ColorManager.grey1,),
        titleSmall:   getMediumStyle(color: ColorManager.primary, fontSize: FontSize.s14),
        bodyLarge:  getRegularStyle(color: ColorManager.grey)
      ),
      
      // input decoration theme (text form field)
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.all(AppPadding.p8),
        // hint style
        hintStyle: getRegularStyle(color: ColorManager.grey1),
        // label styel
        labelStyle: getMediumStyle(color: ColorManager.darkGrey),
        // error style
        errorStyle: getRegularStyle(color: ColorManager.error),
         // enabled border
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color:  ColorManager.grey, width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
        ),
        // focused border
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color:  ColorManager.primary, width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
        ),
        // error border
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color:  ColorManager.error, width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
        ),
        // focused error border
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color:  ColorManager.primary, width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
        ),

      )
      );
}
