package kh.com.a.model;

import java.io.Serializable;


/*------------------------------------------------------------------------------
 * 踰꾧굅瑜� �쐞�븳  DTO(踰꾧굅 �냽 �옱猷뚮뱾�� 紐⑤몢 Bb_IngredientDto �겢�옒�뒪濡� 諛쏆븘以�)
 * -----------------------------------------------------------------------------*/
public class Bb_BurgerDto implements Serializable {
	private int seq;				//�떆���뒪
	private String name;			//踰꾧굅�씠由�
	private Bb_IngredientDto bread;				//鍮듭쥌瑜�
	private Bb_IngredientDto ingredients1;	//�옱猷�1
	private Bb_IngredientDto ingredients2;		//�옱猷�2
	private Bb_IngredientDto ingredients3;		//�옱猷�3
	private Bb_IngredientDto ingredients4;		//�옱猷�4
	private Bb_IngredientDto ingredients5;		//�옱猷�5
	private Bb_IngredientDto ingredients6;		//�옱猷�6
	private Bb_IngredientDto ingredients7;		//�옱猷�7
	private Bb_IngredientDto ingredients8;		//�옱猷�8
	private Bb_IngredientDto ingredients9;		//�옱猷�9
	private int creator;			//留뚮뱺�씠(怨좉컼�씠留뚮뱾�뿀�쓣�븣�뒗 �빐�떦�궗�엺 seq踰덊샇, admin�씠 留뚮뱾�뿀�쓣寃쎌슦 0)
	private int price;				//踰꾧굅媛�寃�
	private int cal;				//移쇰줈由�
	private int del;				//�궘�젣�뿬遺�
	
	public Bb_BurgerDto() {}

	
	public Bb_BurgerDto(int seq, String name, Bb_IngredientDto bread, Bb_IngredientDto ingredients1,
			Bb_IngredientDto ingredients2, Bb_IngredientDto ingredients3, Bb_IngredientDto ingredients4,
			Bb_IngredientDto ingredients5, Bb_IngredientDto ingredients6, Bb_IngredientDto ingredients7,
			Bb_IngredientDto ingredients8, Bb_IngredientDto ingredients9, int creator, int price, int cal, int del) {
		super();
		this.seq = seq;
		this.name = name;
		this.bread = bread;
		this.ingredients1 = ingredients1;
		this.ingredients2 = ingredients2;
		this.ingredients3 = ingredients3;
		this.ingredients4 = ingredients4;
		this.ingredients5 = ingredients5;
		this.ingredients6 = ingredients6;
		this.ingredients7 = ingredients7;
		this.ingredients8 = ingredients8;
		this.ingredients9 = ingredients9;
		this.creator = creator;
		this.price = price;
		this.cal = cal;
		this.del = del;
	}
	
	
	

	public int getSeq() {
		return seq;
	}


	public void setSeq(int seq) {
		this.seq = seq;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public Bb_IngredientDto getBread() {
		return bread;
	}


	public void setBread(Bb_IngredientDto bread) {
		this.bread = bread;
	}


	public Bb_IngredientDto getIngredients1() {
		return ingredients1;
	}


	public void setIngredients1(Bb_IngredientDto ingredients1) {
		this.ingredients1 = ingredients1;
	}


	public Bb_IngredientDto getIngredients2() {
		return ingredients2;
	}


	public void setIngredients2(Bb_IngredientDto ingredients2) {
		this.ingredients2 = ingredients2;
	}


	public Bb_IngredientDto getIngredients3() {
		return ingredients3;
	}


	public void setIngredients3(Bb_IngredientDto ingredients3) {
		this.ingredients3 = ingredients3;
	}


	public Bb_IngredientDto getIngredients4() {
		return ingredients4;
	}


	public void setIngredients4(Bb_IngredientDto ingredients4) {
		this.ingredients4 = ingredients4;
	}


	public Bb_IngredientDto getIngredients5() {
		return ingredients5;
	}


	public void setIngredients5(Bb_IngredientDto ingredients5) {
		this.ingredients5 = ingredients5;
	}


	public Bb_IngredientDto getIngredients6() {
		return ingredients6;
	}


	public void setIngredients6(Bb_IngredientDto ingredients6) {
		this.ingredients6 = ingredients6;
	}


	public Bb_IngredientDto getIngredients7() {
		return ingredients7;
	}


	public void setIngredients7(Bb_IngredientDto ingredients7) {
		this.ingredients7 = ingredients7;
	}


	public Bb_IngredientDto getIngredients8() {
		return ingredients8;
	}


	public void setIngredients8(Bb_IngredientDto ingredients8) {
		this.ingredients8 = ingredients8;
	}


	public Bb_IngredientDto getIngredients9() {
		return ingredients9;
	}


	public void setIngredients9(Bb_IngredientDto ingredients9) {
		this.ingredients9 = ingredients9;
	}


	public int getCreator() {
		return creator;
	}


	public void setCreator(int creator) {
		this.creator = creator;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public int getCal() {
		return cal;
	}


	public void setCal(int cal) {
		this.cal = cal;
	}


	public int getDel() {
		return del;
	}


	public void setDel(int del) {
		this.del = del;
	}


	@Override
	public String toString() {
		return "Bb_BurgerDto [seq=" + seq + ", name=" + name + ", bread=" + bread.toString() + ", ingredients1=" + ingredients1.toString()
				+ ", ingredients2=" + ingredients2.toString() + ", ingredients3=" + ingredients3.toString() + ", ingredients4=" + ingredients4.toString()
				+ ", ingredients5=" + ingredients5.toString() + ", ingredients6=" + ingredients6.toString() + ", ingredients7=" + ingredients7.toString()
				+ ", ingredients8=" + ingredients8.toString() + ", ingredients9=" + ingredients9.toString() + ", creator=" + creator
				+ ", price=" + price + ", cal=" + cal + ", del=" + del + "]";
	}


	
	
}
