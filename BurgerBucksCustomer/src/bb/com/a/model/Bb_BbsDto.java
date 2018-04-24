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
	  private int burger_seq;
	  private String id;
	  private int bbs_like;
	  private int del;
	  private Bb_BurgerDto burger;
	  private String image_Src;
	  private int likecheck;
	  private int writer;
	  private int price;
	  private String burger_name;

  
	  /*---------------------------------------------------------------------------------------
	  Constructor
	  --------------------------------------------------------------------------------------- */
	  
	  public Bb_BbsDto() {
	    super();
	  }


	public Bb_BbsDto(int seq, int burger_seq, String id, int bbs_like, int del, Bb_BurgerDto burger, String image_Src,
			int likecheck, int writer, int price, String burger_name) {
		super();
		this.seq = seq;
		this.burger_seq = burger_seq;
		this.id = id;
		this.bbs_like = bbs_like;
		this.del = del;
		this.burger = burger;
		this.image_Src = image_Src;
		this.likecheck = likecheck;
		this.writer = writer;
		this.price = price;
		this.burger_name = burger_name;
	}


	public Bb_BbsDto(int burger_seq, int writer) {
		super();
		this.burger_seq = burger_seq;
		this.writer = writer;
	}


	public int getSeq() {
		return seq;
	}


	public void setSeq(int seq) {
		this.seq = seq;
	}


	public int getBurger_seq() {
		return burger_seq;
	}


	public void setBurger_seq(int burger_seq) {
		this.burger_seq = burger_seq;
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


	public String getImage_Src() {
		return image_Src;
	}


	public void setImage_Src(String image_Src) {
		this.image_Src = image_Src;
	}


	public int getLikecheck() {
		return likecheck;
	}


	public void setLikecheck(int likecheck) {
		this.likecheck = likecheck;
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


	public String getBurger_name() {
		return burger_name;
	}


	public void setBurger_name(String burger_name) {
		this.burger_name = burger_name;
	}


	@Override
	public String toString() {
		return "Bb_BbsDto [seq=" + seq + ", burger_seq=" + burger_seq + ", id=" + id + ", bbs_like=" + bbs_like
				+ ", del=" + del + ", burger=" + burger + ", image_Src=" + image_Src + ", likecheck=" + likecheck
				+ ", writer=" + writer + ", price=" + price + ", burger_name=" + burger_name + "]";
	}




	
	



	
	

}
