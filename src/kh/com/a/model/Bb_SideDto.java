package kh.com.a.model;

import java.io.Serializable;


/*------------------------------------------------------------------------------
 * �궗�씠�뱶硫붾돱瑜쇱쐞�븳 DTO
 * -----------------------------------------------------------------------------*/
public class Bb_SideDto implements Serializable {
	private int seq;			//�떆���뒪
	private String name;		//�궗�씠�뱶 �씠由�
	private int price;			//�궗�씠�뱶 媛�寃�
	private int cal;			//�궗�씠�뱶 移쇰줈由�
	private int del;			//�궘�젣 �뿬遺� 
	
	public Bb_SideDto() {}

	public Bb_SideDto(int seq, String name, int price, int cal, int del) {
		super();
		this.seq = seq;
		this.name = name;
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
		return "Bb_SideDto [seq=" + seq + ", name=" + name + ", price=" + price + ", cal=" + cal + ", del=" + del + "]";
	}
	
	
}
