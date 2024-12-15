
import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'responses.g.dart';

@JsonSerializable()
class BaseResponse{
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "message")
  String? message;
}

@JsonSerializable()
class CustomerResponse{
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "numOfNotifications")
  String? numOfNotifications;
  CustomerResponse(this.id,this.name,this.numOfNotifications);
    // from json
 factory CustomerResponse.fromJson(Map<String, dynamic> json) => _$CustomerResponseFromJson(json);

  // to json
  Map<String, dynamic> toJson() => _$CustomerResponseToJson(this);
}

@JsonSerializable()
class ContactResponse{
  @JsonKey(name: "phone")
  int? phone;
  @JsonKey(name: "email")
  String? email;
  ContactResponse(this.phone,this.email);
    // from json
 factory ContactResponse.fromJson(Map<String, dynamic> json) => _$ContactResponseFromJson(json);

  // to json
  Map<String, dynamic> toJson() => _$ContactResponseToJson(this);
}

@JsonSerializable()
class AUthenticationResponse extends BaseResponse{
  @JsonKey(name: "customer")
  CustomerResponse? customer;
  @JsonKey(name: "contacts")
  ContactResponse? contact;

 AUthenticationResponse(this.customer,this.contact);
  // from json
 factory AUthenticationResponse.fromJson(Map<String, dynamic> json) => _$AUthenticationResponseFromJson(json);

  // to json
  Map<String, dynamic> toJson() => _$AUthenticationResponseToJson(this);
} 