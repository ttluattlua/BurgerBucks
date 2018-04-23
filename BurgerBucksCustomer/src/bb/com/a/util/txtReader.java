package bb.com.a.util;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

public class txtReader {

    public static List<String> txt_readTerms(String terms_file) {
      List<String> terms_txt = new ArrayList<>();
 
      try {
        

        BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(terms_file),"euc-kr"));
        String text;

        while ((text = br.readLine()) != null) {
          terms_txt.add(text);
        }
        br.close();
        
      } 
      catch (Exception e) {
      }
      
      return terms_txt;
    }
}
