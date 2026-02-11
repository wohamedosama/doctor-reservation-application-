// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialization_response_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SpecializationResponseModelAdapter
    extends TypeAdapter<SpecializationResponseModel> {
  @override
  final typeId = 0;

  @override
  SpecializationResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SpecializationResponseModel(
      specializationsData: (fields[0] as List?)?.cast<SpecializationsData?>(),
    );
  }

  @override
  void write(BinaryWriter writer, SpecializationResponseModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.specializationsData);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpecializationResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SpecializationsDataAdapter extends TypeAdapter<SpecializationsData> {
  @override
  final typeId = 1;

  @override
  SpecializationsData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SpecializationsData(
      id: (fields[0] as num?)?.toInt(),
      specialityCatgory: fields[1] as String?,
      doctorsModel: (fields[2] as List?)?.cast<Doctors?>(),
    );
  }

  @override
  void write(BinaryWriter writer, SpecializationsData obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.specialityCatgory)
      ..writeByte(2)
      ..write(obj.doctorsModel);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpecializationsDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DoctorsAdapter extends TypeAdapter<Doctors> {
  @override
  final typeId = 2;

  @override
  Doctors read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Doctors(
      id: (fields[0] as num?)?.toInt(),
      name: fields[1] as String?,
      email: fields[2] as String?,
      phone: fields[3] as String?,
      photo: fields[4] as String?,
      gender: fields[5] as String?,
      degree: fields[6] as String?,
      price: (fields[7] as num?)?.toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, Doctors obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.phone)
      ..writeByte(4)
      ..write(obj.photo)
      ..writeByte(5)
      ..write(obj.gender)
      ..writeByte(6)
      ..write(obj.degree)
      ..writeByte(7)
      ..write(obj.price);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DoctorsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecializationResponseModel _$SpecializationResponseModelFromJson(
        Map<String, dynamic> json) =>
    SpecializationResponseModel(
      specializationsData: (json['data'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : SpecializationsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecializationResponseModelToJson(
        SpecializationResponseModel instance) =>
    <String, dynamic>{
      'data': instance.specializationsData,
    };

SpecializationsData _$SpecializationsDataFromJson(Map<String, dynamic> json) =>
    SpecializationsData(
      id: (json['id'] as num?)?.toInt(),
      specialityCatgory: json['name'] as String?,
      doctorsModel: (json['doctors'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Doctors.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecializationsDataToJson(
        SpecializationsData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.specialityCatgory,
      'doctors': instance.doctorsModel,
    };

Doctors _$DoctorsFromJson(Map<String, dynamic> json) => Doctors(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      photo: json['photo'] as String?,
      gender: json['gender'] as String?,
      degree: json['degree'] as String?,
      price: (json['appoint_price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DoctorsToJson(Doctors instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'photo': instance.photo,
      'gender': instance.gender,
      'degree': instance.degree,
      'appoint_price': instance.price,
    };
