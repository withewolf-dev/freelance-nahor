class RequestModel {
  String accepted;
  String address;
  String descrp;
  String phonenum;
  String freelancerId;
  String freelancerName;
  String hireId;
  String hirename;

  RequestModel(
      {required this.accepted,
      required this.descrp,
      required this.address,
      required this.freelancerId,
      required this.freelancerName,
      required this.hireId,
      required this.hirename,
      required this.phonenum});

  RequestModel.fromJson(Map<String, dynamic> parsedJSON)
      : accepted = parsedJSON['accepted'],
        address = parsedJSON['address'],
        descrp = parsedJSON['descrp'],
        phonenum = parsedJSON['phonenum'],
        freelancerId = parsedJSON['freelancerId'],
        freelancerName = parsedJSON['freelancerName'],
        hireId = parsedJSON['hireId'],
        hirename = parsedJSON['hirename'];
}
