class Countryinfo {
  final String countryimage;
  final String countryname;
  final String subtitle;
  
  Countryinfo(
      {
    required this.countryimage,
    required this.countryname,
    required this.subtitle,
      }
  );
}

final List<Countryinfo> countries =[
  Countryinfo(countryimage: "asset/bd.png", countryname: "Bangladesh", subtitle: "A south asian country"),
  Countryinfo(countryimage: "asset/Japan.svg.png", countryname: "Japan", subtitle: "Best known for technology and culture"),
  Countryinfo(countryimage: "asset/France.svg.png", countryname: "France", subtitle: "Rich culture"),
  Countryinfo(countryimage: "asset/Italy.svg.png", countryname: "Italy", subtitle: "Best known for food and Architectural Beauty"),
  Countryinfo(countryimage: "asset/Brazil.svg.png", countryname: "Brazil", subtitle: "Best knwon for Football and Amazon"),
  Countryinfo(countryimage: "asset/Argentina.svg.png", countryname: "Argentina", subtitle: "Best known for Messi"),
  Countryinfo(countryimage: "asset/switzerland-flag-vector.jpg", countryname: "Swizertland", subtitle: "Dynamic Natural beautiful Country"),
  Countryinfo(countryimage: "asset/Canada_(Pantone).svg.png", countryname: "Canda", subtitle: "A peaceful Country"),
  Countryinfo(countryimage: "asset/Flag-Portugal.jpg", countryname: "Portugal", subtitle: "Known for CR7"),
  Countryinfo(countryimage: "asset/Russia.svg.png", countryname: "Russia", subtitle: "Knwon for Arms and culture"),
  Countryinfo(countryimage: "asset/China.svg.png", countryname: "China", subtitle: "Richest Asian Country"),
  Countryinfo(countryimage: "asset/Germany.svg.png", countryname: "Germany", subtitle: "Known for Best education and Scientist"),
  Countryinfo(countryimage: "asset/England.svg.png", countryname: "England", subtitle: "Has Infamous Politics"),
  Countryinfo(countryimage: "asset/Pakistan.svg.png", countryname: "Pakistan", subtitle: "A beautiful Asian Country"),
  Countryinfo(countryimage: "asset/Afganistan.png", countryname: "Afghanistan", subtitle: "Known for their culture"),
  Countryinfo(countryimage: "asset/Flag_of_Zimbabwe.svg.png", countryname: "Zimbabwe", subtitle: "A African Country"),
  Countryinfo(countryimage: "asset/Australia_(converted).svg.png", countryname: "Austrilia", subtitle: "A peaceful Rich country"),
];