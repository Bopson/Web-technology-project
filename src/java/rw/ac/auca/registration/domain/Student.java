package rw.ac.auca.registration.domain;

/**
 *
 * @author USER
 */
public class Student {

    private String Code;
    private String Names;
    private Integer Credits;
    private Integer Fee;

    public String getCode() {
        return Code;
    }

    public void setCode(String Code) {
        this.Code = Code;
    }

    public String getNames() {
        return Names;
    }

    public void setNames(String Names) {
        this.Names = Names;
    }

    public Integer getCredits() {
        return Credits;
    }

    public void setCredits(Integer Credits) {
        this.Credits = Credits;
    }

    public Integer getFee() {
        return Fee;
    }

    public void setFee(Integer Fee) {
        this.Fee = Fee;
    }

   
}
