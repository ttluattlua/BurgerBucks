package bb.com.a.util;

import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.imageio.ImageIO;

import bb.com.a.model.Bb_IngredientDto;;

public class burgerImageEditor {
  
  public static boolean addBurgerImage (List<Bb_IngredientDto> ingredient_list) throws IOException {
    
    File output_path = new File(directoryFinder.directory+"/Burger");
    System.out.println(directoryFinder.directory+"/Burger");

    int size = ingredient_list.size();
    int width = 100;
    int height = 150;
    
    BufferedImage bread_top, bread_bot, ing01, ing02, ing03, ing04, ing05, ing06, ing07, ing08, ing09;
    BufferedImage burger = new BufferedImage(width, height, BufferedImage.TYPE_INT_ARGB);
    Graphics g = burger.getGraphics();
    
    
    for (int i = 0; i < ingredient_list.size(); i++) {
      switch (i) {
      case 0: bread_top = ImageIO.read(new File(ingredient_list.get(i).getImage_Src())); g.drawImage(bread_top, 0, 100, null); break;
      case 2: ing01 = ImageIO.read(new File(ingredient_list.get(i).getImage_Src())); g.drawImage(ing01, 0, 90, null); break;
      case 3: ing02 = ImageIO.read(new File(ingredient_list.get(i).getImage_Src())); g.drawImage(ing02, 0, 80, null); break;
      case 4: ing03 = ImageIO.read(new File(ingredient_list.get(i).getImage_Src())); g.drawImage(ing03, 0, 70, null); break;
      case 5: ing04 = ImageIO.read(new File(ingredient_list.get(i).getImage_Src())); g.drawImage(ing04, 0, 60, null); break;
      case 6: ing05 = ImageIO.read(new File(ingredient_list.get(i).getImage_Src())); g.drawImage(ing05, 0, 50, null); break;
      case 7: ing06 = ImageIO.read(new File(ingredient_list.get(i).getImage_Src())); g.drawImage(ing06, 0, 40, null); break;
      case 8: ing07 = ImageIO.read(new File(ingredient_list.get(i).getImage_Src())); g.drawImage(ing07, 0, 30, null); break;
      case 9: ing08 = ImageIO.read(new File(ingredient_list.get(i).getImage_Src())); g.drawImage(ing08, 0, 20, null); break;
      case 10: ing09 = ImageIO.read(new File(ingredient_list.get(i).getImage_Src())); g.drawImage(ing09, 0, 10, null); break;
      }
    }
    bread_bot = ImageIO.read(new File(ingredient_list.get(1).getImage_Src())); g.drawImage(bread_bot, 0, 100-((ingredient_list.size()-1)*10), null);
    
    // Save as new image
    ImageIO.write(burger, "PNG", new File(output_path, "a.png"));

    return true;
  }

}
