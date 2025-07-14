class RequiredDoctorAvailabiltyBody {
  String? doctorID;
  String? facilityID;
  String? fromDate;
  String? toDAte;
  String? serviceType;
  bool? isVedioSession;

  RequiredDoctorAvailabiltyBody(
      {this.doctorID,
      this.facilityID,
      this.fromDate,
      this.toDAte,
      this.serviceType,
      this.isVedioSession});

  RequiredDoctorAvailabiltyBody.fromJson(Map<String, dynamic> json) {
    doctorID = json['doctorID'];
    facilityID = json['facilityID'];
    fromDate = json['fromDate'];
    toDAte = json['toDAte'];
    serviceType = json['serviceType'];
    isVedioSession = json['IsVedioSession'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['doctorID'] = doctorID;
    data['facilityID'] = facilityID;
    data['fromDate'] = fromDate;
    data['toDAte'] = toDAte;
    data['serviceType'] = serviceType;
    data['IsVedioSession'] = isVedioSession;
    return data;
  }
}
