public void setup() {
  String[] lines = {"beast", "dough", "happy", "question", "star", "three", "eagle", "try"};
  //String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0; i < lines.length; i++)
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw() {
}

public int findFirstVowel(String sWord) {
  String vowels = "aeiou";
  for (int index = 0; index < sWord.length(); index++) {
    if (vowels.contains(String.valueOf(sWord.charAt(index)))) {
      return index;
    }
  }
  return -1;
}

public String pigLatin(String sWord) {
  if (findFirstVowel(sWord) == -1) { // check for  non vowel
    return sWord + "ay";

  } else if (sWord.substring(0, 2).equals("qu")) { //check for qu
    return sWord.substring(2)+sWord.substring(0, 2)+"ay";

  } else if (findFirstVowel(sWord) == 0){ // vowel
    return sWord+"way";
    
  } else if (findFirstVowel(sWord) != 0){ //wait until vowel
    return sWord.substring(findFirstVowel(sWord))+sWord.substring(0, findFirstVowel(sWord))+"ay";
  }
  return "error";
}

//String vowels = "aeiou";
//String sWord = "eaSports";
//  for (int index = 0; index < sWord.length(); index++) {
//  if (vowels.contains(String.valueOf(sWord.charAt(index)))) {
//    System.out.println(index);
//  }
//} idiots that think they always right
