
import 'package:flutter/material.dart';
import 'package:my_advanced_flutter/presentation/resources/font_manager.dart';

TextStyle _getTextStyle(double fontSize, String fontFamily,FontWeight fontWeight, Color color){
  return TextStyle(fontSize: fontSize,fontFamily: fontFamily,color: color,fontWeight: fontWeight);
}

//regular style

TextStyle getRegularStyle({double fontSize = FontSize.s12, required Color color}){
  return _getTextStyle(fontSize, FontConstant.fontFamily,FontWeightManager.regular, color,);
}

//light style

TextStyle getLightStyle({double fontSize = FontSize.s12, required Color color}){
  return _getTextStyle(fontSize, FontConstant.fontFamily,FontWeightManager.light, color,);
}

//bold style

TextStyle getBoldStyle({double fontSize = FontSize.s12, required Color color}){
  return _getTextStyle(fontSize, FontConstant.fontFamily,FontWeightManager.bold, color,);
}

//semi style

TextStyle getSemiBoldStyle({double fontSize = FontSize.s12, required Color color}){
  return _getTextStyle(fontSize, FontConstant.fontFamily,FontWeightManager.semibold, color,);
}

//medium style

TextStyle getMediumStyle({double fontSize = FontSize.s12, required Color color}){
  return _getTextStyle(fontSize, FontConstant.fontFamily,FontWeightManager.medium, color,);
}