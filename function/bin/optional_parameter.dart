//Optional Parameter
//Optional parameter dibagi 2 : named parameter dan positional parameter

//Optional Parameters - Named Parameter
//Menggunakan {}

String sayMessage(String sender, String message,
    {String receiver, String via}) {
  return sender +
      ' say ' +
      message +
      ((receiver != null) ? " to " + receiver : "") +
      ((via != null) ? " using " + via : "");
}

String sayMessage2(String sender, String message,
    [String receiver, String via]) {
  return sender +
      ' say ' +
      message +
      ((receiver != null) ? " to " + receiver : "") +
      ((via != null) ? " using " + via : "");
}

main(List<String> args) {
  print(sayMessage("Jesus", "I love you", via: 'Whatsapp'));
  print(sayMessage2("Jesus", "I love you", "Steven"));
  
}
