package bb.com.a.model;

import java.io.Serializable;
import java.util.List;

public class Bb_LikeDto implements Serializable {

  private int seq;
  private int member_Seq ;
  private int bbs_Seq;
  
  /*---------------------------------------------------------------------------------------
  Constructor
  --------------------------------------------------------------------------------------- */
  public Bb_LikeDto() { }

	public Bb_LikeDto(int seq, int member_Seq, int bbs_Seq) {
		super();
		this.seq = seq;
		this.member_Seq = member_Seq;
		this.bbs_Seq = bbs_Seq;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public int getMember_Seq() {
		return member_Seq;
	}

	public void setMember_Seq(int member_Seq) {
		this.member_Seq = member_Seq;
	}

	public int getBbs_Seq() {
		return bbs_Seq;
	}

	public void setBbs_Seq(int bbs_Seq) {
		this.bbs_Seq = bbs_Seq;
	}

	@Override
	public String toString() {
		return "Bb_LikeDto [seq=" + seq + ", member_Seq=" + member_Seq + ", bbs_Seq=" + bbs_Seq + "]";
	}
  
	

}
