import 'dart:convert';

import 'package:yes_no_flutter_app/domain/entities/message.dart';

class YesNoModel {
  final String? answer;
  final bool? forced;
  final String? image;

  YesNoModel({
    this.answer,
    this.forced,
    this.image,
  });

  YesNoModel copyWith({
    String? answer,
    bool? forced,
    String? image,
  }) =>
      YesNoModel(
        answer: answer ?? this.answer,
        forced: forced ?? this.forced,
        image: image ?? this.image,
      );

  factory YesNoModel.fromRawJson(String str) =>
      YesNoModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory YesNoModel.fromJson(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
      };

  Message toMessageEntity() => Message(
        text: answer == 'yes' ? 'Si' : 'No',
        imageUrl: image,
        fromWho: FromWho.her,
      );
}
