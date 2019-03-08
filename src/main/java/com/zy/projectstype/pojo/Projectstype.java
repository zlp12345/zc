package com.zy.projectstype.pojo;

public class Projectstype {
//    (`pst_id`,
    private Integer pst_id;
//            `pst_name`,
    private String pst_name;
//            `pst_desc`,
    private String pst_desc;
//            `pst_stardate`,
    private String pst_stardate;
//            `pst_type`
    private Integer pst_type;

    public void setPst_id(Integer pst_id) {
        this.pst_id = pst_id;
    }

    public void setPst_name(String pst_name) {
        this.pst_name = pst_name;
    }

    public void setPst_desc(String pst_desc) {
        this.pst_desc = pst_desc;
    }

    public void setPst_stardate(String pst_stardate) {
        this.pst_stardate = pst_stardate;
    }

    public void setPst_type(Integer pst_type) {
        this.pst_type = pst_type;
    }

    public Integer getPst_id() {

        return pst_id;
    }

    public String getPst_name() {
        return pst_name;
    }

    public String getPst_desc() {
        return pst_desc;
    }

    public String getPst_stardate() {
        return pst_stardate;
    }

    public Integer getPst_type() {
        return pst_type;
    }

    public Projectstype(Integer pst_id, String pst_name, String pst_desc, String pst_stardate, Integer pst_type) {

        this.pst_id = pst_id;
        this.pst_name = pst_name;
        this.pst_desc = pst_desc;
        this.pst_stardate = pst_stardate;
        this.pst_type = pst_type;
    }

    public Projectstype() {
    }
}
