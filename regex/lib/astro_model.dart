class AstroModel {
  String? bgImage;
  String? astroProfilePic;
  bool? showOmIcon;
  AstroType? astroType;
  String? astroName;
  int? expYear;
  List<String>? lang;
  int? orignalPrice;
  AstroPrice? astroPrice;
  double? rating;

  AstroModel(
      {this.bgImage,
      this.astroProfilePic,
      this.showOmIcon,
      this.astroType,
      this.astroName,
      this.expYear,
      this.lang,
      this.orignalPrice,
      this.astroPrice,
      this.rating});

  AstroModel.fromJson(Map<String, dynamic> json) {
    bgImage = json['bg_image'];
    astroProfilePic = json['astro_profile_pic'];
    showOmIcon = json['show_om_icon'];
    astroType = json['astro_type'] != null
        ? new AstroType.fromJson(json['astro_type'])
        : null;
    astroName = json['astro_name'];
    expYear = json['exp_year'];
    lang = json['lang'].cast<String>();
    orignalPrice = json['orignal_price'];
    astroPrice = json['astro_price'] != null
        ? new AstroPrice.fromJson(json['astro_price'])
        : null;
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bg_image'] = this.bgImage;
    data['astro_profile_pic'] = this.astroProfilePic;
    data['show_om_icon'] = this.showOmIcon;
    if (this.astroType != null) {
      data['astro_type'] = this.astroType!.toJson();
    }
    data['astro_name'] = this.astroName;
    data['exp_year'] = this.expYear;
    data['lang'] = this.lang;
    data['orignal_price'] = this.orignalPrice;
    if (this.astroPrice != null) {
      data['astro_price'] = this.astroPrice!.toJson();
    }
    data['rating'] = this.rating;
    return data;
  }
}

class AstroType {
  String? type;
  int? totalCount;

  AstroType({this.type, this.totalCount});

  AstroType.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    totalCount = json['total_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['total_count'] = this.totalCount;
    return data;
  }
}

class AstroPrice {
  String? type;
  int? newCharge;

  AstroPrice({this.type, this.newCharge});

  AstroPrice.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    newCharge = json['new_charge'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['new_charge'] = this.newCharge;
    return data;
  }
}
