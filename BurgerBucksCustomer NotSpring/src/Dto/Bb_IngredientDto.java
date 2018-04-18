package Dto;

import java.io.Serializable;
import java.util.List;

public class Bb_IngredientDto implements Serializable {
  
  private int seq;
  private String name;
  private int type;
  private int price;
  private int cal;
  private boolean del;
  
  private List<Bb_ImageDto> imageList;
  
  public Bb_IngredientDto() { }

  public Bb_IngredientDto(String name, int type, int price, int cal) {
    super();
    this.name = name;
    this.type = type;
    this.price = price;
    this.cal = cal;
  }

  public Bb_IngredientDto(int seq, String name, int type, int price, int cal, boolean del) {
    super();
    this.seq = seq;
    this.name = name;
    this.type = type;
    this.price = price;
    this.cal = cal;
    this.del = del;
  }

}
