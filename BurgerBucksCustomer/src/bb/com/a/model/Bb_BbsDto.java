package bb.com.a.model;

import java.io.Serializable;
import java.util.List;

public class Bb_BbsDto implements Serializable {

/*	
	SEQ NUMBER(10) PRIMARY KEY,
	BURGER_SEQ NUMBER(10) NOT NULL,
	ID VARCHAR2(20) NOT NULL,
	BBS_LIKE NUMBER(10) NOT NULL,
	DEL NUMBER(1) NOT NULL*/	
	  private int seq;
	  private int buger_seq;
	  private String id;
	  private int bbs_like;
	  private int del;
	  private Bb_BurgerDto burger;
	  private int writer;
	  private int price;

  
	  /*---------------------------------------------------------------------------------------
	  Constructor
	  --------------------------------------------------------------------------------------- */
	  
	  public Bb_BbsDto() {
	    super();
	  }

	
	public Bb_BbsDto(int seq, int buger_seq, String id, int bbs_like, int del, Bb_BurgerDto burger, int writer, int price) {
		super();
		this.seq = seq;
		this.buger_seq = buger_seq;
		this.id = id;
		this.bbs_like = bbs_like;
		this.del = del;
		this.burger = burger;
		this.writer = writer;
		this.price = price;
	}


	public int getSeq() {
		return seq;
	}


	public void setSeq(int seq) {
		this.seq = seq;
	}


	public int getBuger_seq() {
		return buger_seq;
	}


	public void setBuger_seq(int buger_seq) {
		this.buger_seq = buger_seq;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public int getBbs_like() {
		return bbs_like;
	}


	public void setBbs_like(int bbs_like) {
		this.bbs_like = bbs_like;
	}


	public int getDel() {
		return del;
	}


	public void setDel(int del) {
		this.del = del;
	}


	public Bb_BurgerDto getBurger() {
		return burger;
	}


	public void setBurger(Bb_BurgerDto burger) {
		this.burger = burger;
	}


	public int getWriter() {
		return writer;
	}


	public void setWriter(int writer) {
		this.writer = writer;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	@Override
	public String toString() {
		return "Bb_BbsDto [seq=" + seq + ", buger_seq=" + buger_seq + ", id=" + id + ", bbs_like=" + bbs_like + ", del="
				+ del + ", burger=" + burger + ", writer=" + writer + ", price=" + price + "]";
	}
	
	

}
