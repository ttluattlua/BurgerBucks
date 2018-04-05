package bb.com.a.model;

import java.io.Serializable;

public class Bb_ImageDto implements Serializable {

  private int seq;
  private String tableType;
  private String imageType;
  private int refSeq;
  private boolean del;
  
  
  /*---------------------------------------------------------------------------------------
   * Constructor
  --------------------------------------------------------------------------------------- */
  public Bb_ImageDto() { }
  
  public Bb_ImageDto(String tableType, String imageType, int refSeq) {
    super();
    this.tableType = tableType;
    this.imageType = imageType;
    this.refSeq = refSeq;
  }

  public Bb_ImageDto(int seq, String tableType, String imageType, int refSeq, boolean del) {
    super();
    this.seq = seq;
    this.tableType = tableType;
    this.imageType = imageType;
    this.refSeq = refSeq;
    this.del = del;
  }
  
  /*---------------------------------------------------------------------------------------
   * Getter & Setter
  --------------------------------------------------------------------------------------- */
  
  public int getSeq() {
    return seq;
  }

  public void setSeq(int seq) {
    this.seq = seq;
  }

  public String getTableType() {
    return tableType;
  }

  public void setTableType(String tableType) {
    this.tableType = tableType;
  }

  public String getImageType() {
    return imageType;
  }

  public void setImageType(String imageType) {
    this.imageType = imageType;
  }

  public int getRefSeq() {
    return refSeq;
  }

  public void setRefSeq(int refSeq) {
    this.refSeq = refSeq;
  }

  public boolean isDel() {
    return del;
  }

  public void setDel(boolean del) {
    this.del = del;
  }

  
}
