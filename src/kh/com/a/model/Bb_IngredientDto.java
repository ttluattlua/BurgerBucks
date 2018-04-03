package kh.com.a.model;

import java.io.Serializable;


/*------------------------------------------------------------------------------
 * �옱猷뚮�� �쐞�븳  DTO
 * -----------------------------------------------------------------------------*/
public class Bb_IngredientDto implements Serializable {
	private int seq;		//�떆���뒪
	private String name;	//�옱猷뚯씠由�
	private int types;		//�옱猷뚰��엯
	private int price;		//媛�寃�
	private int cal;		//移쇰줈由�
	private int del;		//�궘�젣�뿬遺�
	
	public Bb_IngredientDto() {}

	public Bb_IngredientDto(int seq, String name, int types, int price, int cal, int del) {
		super();
		this.seq = seq;
		this.name = name;
		this.types = types;
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

	public int getTypes() {
		return types;
	}

	public void setTypes(int types) {
		this.types = types;
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
		return "Bb_IngredientDto [seq=" + seq + ", name=" + name + ", types=" + types + ", price=" + price + ", cal="
				+ cal + ", del=" + del + "]";
	}
	
	
}
