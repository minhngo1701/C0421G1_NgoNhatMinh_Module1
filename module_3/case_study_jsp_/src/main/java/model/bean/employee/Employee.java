package model.bean.employee;

public class Employee {
    private int id;
    private String name;
    private String dateOfBirth;
    private String idCard;
    private double salary;
    private String phone;
    private String email;
    private String address;
    private int positionId;
    private int educationId;
    private int divisionId;
    private String userName;

    public Employee() {
    }

    public Employee(int id, String name, String dateOfBirth, String id_card, double salary, String phone, String email, String address, int positionId, int educationId, int divisionId, String userName) {
        this.id = id;
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.idCard = id_card;
        this.salary = salary;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.positionId = positionId;
        this.educationId = educationId;
        this.divisionId = divisionId;
        this.userName = userName;
    }

    public Employee(String name, String dateOfBirth, String idCard, Double salary, String phone, String email, String address, int positionId, int educationId, int divisionId, String userName) {
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.idCard = idCard;
        this.salary = salary;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.positionId = positionId;
        this.educationId = educationId;
        this.divisionId = divisionId;
        this.userName = userName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getPositionId() {
        return positionId;
    }

    public void setPositionId(int positionId) {
        this.positionId = positionId;
    }

    public int getEducationId() {
        return educationId;
    }

    public void setEducationId(int educationId) {
        this.educationId = educationId;
    }

    public int getDivisionId() {
        return divisionId;
    }

    public void setDivisionId(int divisionId) {
        this.divisionId = divisionId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
