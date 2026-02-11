import 'package:doctor_reservation_app/features/home/data/model/hive_helper/fields/doctors_fields.dart';
import 'package:doctor_reservation_app/features/home/data/model/hive_helper/fields/specialization_response_model_fields.dart';
import 'package:doctor_reservation_app/features/home/data/model/hive_helper/fields/specializations_data_fields.dart';
import 'package:doctor_reservation_app/features/home/data/model/hive_helper/hive_types.dart';
import 'package:hive_ce/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'specialization_response_model.g.dart';

@JsonSerializable()
@HiveType(typeId: HiveTypes.specializationResponseModel)
class SpecializationResponseModel extends HiveObject {
  @JsonKey(name: 'data')
  @HiveField(SpecializationResponseModelFields.specializationsData)
  List<SpecializationsData?>? specializationsData;
  SpecializationResponseModel({this.specializationsData});
  factory SpecializationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$SpecializationResponseModelToJson(this);
}

@JsonSerializable()
@HiveType(typeId: HiveTypes.specializationsData)
class SpecializationsData extends HiveObject {
  @HiveField(SpecializationsDataFields.id)
  int? id;
  @JsonKey(name: 'name')
  @HiveField(SpecializationsDataFields.specialityCatgory)
  String? specialityCatgory;
  @JsonKey(name: 'doctors')
  @HiveField(SpecializationsDataFields.doctorsModel)
  List<Doctors?>? doctorsModel;
  SpecializationsData({this.id, this.specialityCatgory, this.doctorsModel});
  factory SpecializationsData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsDataFromJson(json);

  Map<String, dynamic> toJson() => _$SpecializationsDataToJson(this);
}

@JsonSerializable()
@HiveType(typeId: HiveTypes.doctors)
class Doctors extends HiveObject {
  @HiveField(DoctorsFields.id)
  int? id;
  @HiveField(DoctorsFields.name)
  String? name;
  @HiveField(DoctorsFields.email)
  String? email;
  @HiveField(DoctorsFields.phone)
  String? phone;
  @HiveField(DoctorsFields.photo)
  String? photo;
  @HiveField(DoctorsFields.gender)
  String? gender;
  @HiveField(DoctorsFields.degree)
  String? degree;
  @JsonKey(name: 'appoint_price')
  @HiveField(DoctorsFields.price)
  int? price;
  Doctors({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.photo,
    this.gender,
    this.degree,
    this.price,
  });

  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorsToJson(this);
}
