# Java apis

print 2d array

```text
Arrays.deepToString
```

print array

```text
Arrays.toString(int[])
```

sort array

```text
Arrays.sort(int[] or int[][])
```

sort list

```text
Collections.sort(list)
```

regex



```text
String Str = new String("Welcome to Tutorialspoint.com");

      System.out.print("Return Value :" );
      System.out.println(Str.matches("(.*)Tutorials(.*)"));
```

```text
Pattern pattern = Pattern.compile("w3schools", Pattern.CASE_INSENSITIVE);
    Matcher matcher = pattern.matcher("Visit W3Schools!");
    boolean matchFound = matcher.find();
    if(matchFound) {
      System.out.println("Match found");
    } else {
      System.out.println("Match not found");
    }
    matcher.group();
```

