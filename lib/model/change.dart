class Names{
  // String names(String my, String his, String her)
  var lstName = ["Sid", "Dis", "Isd"];

  String displayName(var index) => lstName[((index % lstName.length))];
}