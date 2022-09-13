// response from https://jsonplaceholder.typicode.com/users

class AllUsersApiResponseDto {
  int id = -1;
  String name = "";
  String username = "";
  String email = "";
  Address address = Address(
    street: "",
    suite: "",
    city: "",
    zipcode: "",
    geo: Geo(lat: "", lng: ""),
  );
  String phone = "";
  String website = "";
  Company company = Company(name: "", catchPhrase: "", bs: "");

  AllUsersApiResponseDto({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  AllUsersApiResponseDto.fromJson(Map<String, dynamic> apiResponseJson) {
    id = apiResponseJson['id'];
    name = apiResponseJson['name'];
    username = apiResponseJson['username'];
    email = apiResponseJson['email'];
    address = (apiResponseJson['address'] != null
        ? Address.fromJson(apiResponseJson['address'])
        : null)!;
    phone = apiResponseJson['phone'];
    website = apiResponseJson['website'];
    company = (apiResponseJson['company'] != null
        ? Company.fromJson(apiResponseJson['company'])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['username'] = username;
    data['email'] = email;
    data['address'] = address.toJson();
    data['phone'] = phone;
    data['website'] = website;
    data['company'] = company.toJson();
    return data;
  }
}

class Address {
  String street = "";
  String suite = "";
  String city = "";
  String zipcode = "";
  Geo geo = Geo(lat: "", lng: "");

  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  Address.fromJson(Map<String, dynamic> addressJson) {
    street = addressJson['street'];
    suite = addressJson['suite'];
    city = addressJson['city'];
    zipcode = addressJson['zipcode'];
    geo =
        (addressJson['geo'] != null ? Geo.fromJson(addressJson['geo']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['street'] = street;
    data['suite'] = suite;
    data['city'] = city;
    data['zipcode'] = zipcode;
    data['geo'] = geo.toJson();
    return data;
  }
}

class Geo {
  String lat = "";
  String lng = "";

  Geo({required this.lat, required this.lng});

  Geo.fromJson(Map<String, dynamic> geoJson) {
    lat = geoJson['lat'];
    lng = geoJson['lng'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['lat'] = lat;
    data['lng'] = lng;
    return data;
  }
}

class Company {
  String name = "";
  String catchPhrase = "";
  String bs = "";

  Company({required this.name, required this.catchPhrase, required this.bs});

  Company.fromJson(Map<String, dynamic> companyJson) {
    name = companyJson['name'];
    catchPhrase = companyJson['catchPhrase'];
    bs = companyJson['bs'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['catchPhrase'] = catchPhrase;
    data['bs'] = bs;
    return data;
  }
}
