package bb.com.a.model;

import java.io.Serializable;
import java.util.List;

public class Bb_BurgerDto implements Serializable {

  private int seq;
  private Bb_IngredientDto bread;
  private List<Bb_IngredientDto> ingredientList;
  private int creatorSeq;
  private int price;
  private int calorie;
  private boolean del;
  
  public Bb_BurgerDto() {}
  
  public Bb_BurgerDto(Bb_IngredientDto bread, List<Bb_IngredientDto> ingredientList, int creatorSeq, int price,
      int calorie) {
    super();
    this.bread = bread;
    this.ingredientList = ingredientList;
    this.creatorSeq = creatorSeq;
    this.price = price;
    this.calorie = calorie;
  }

  public Bb_BurgerDto(int seq, Bb_IngredientDto bread, List<Bb_IngredientDto> ingredientList, int creatorSeq, int price,
      int calorie, boolean del) {
    super();
    this.seq = seq;
    this.bread = bread;
    this.ingredientList = ingredientList;
    this.creatorSeq = creatorSeq;
    this.price = price;
    this.calorie = calorie;
    this.del = del;
  }
  
  
}
