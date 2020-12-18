package com.cuit.javaweb.mvc;
 
public class AllNewsModel {
    private int nid;
    private String ntitle;
    private String ntype;
    private String nauthor;
    public AllNewsModel(int id,String title,String type,String author){
        this.nid=id;
        this.ntitle=title;
        this.ntype=type;
        this.nauthor=author;
    }
    public int getNid() {
        return nid;
    }
    public void setNid(int nid) {
        this.nid = nid;
    }
    public String getNtitle() {
        return ntitle;
    }
    public void setNtitle(String ntitle) {
        this.ntitle = ntitle;
    }
    public String getNtype() {
        return ntype;
    }
    public void setNtype(String ntype) {
        this.ntype = ntype;
    }
    public String getNauthor() {
        return nauthor;
    }
    public void setNauthor(String nauthor) {
        this.nauthor = nauthor;
    }
}