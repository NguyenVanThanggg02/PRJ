
package model;

public class Account {
    private int id;
    private String username;
    private String password;
    private boolean role;
    private String address;
    private String phone;
    private String avatar;

    public Account() {
    }

    public Account(int id, String username, String password, boolean role, String address, String phone, String avatar) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.role = role;
        this.address = address;
        this.phone = phone;
        this.avatar = avatar;
    }

    public Account(String user, String pass, boolean b) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isRole() {
        return role;
    }

    public void setRole(boolean role) {
        this.role = role;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", username=" + username + ", password=" + password + ", role=" + role + ", address=" + address + ", phone=" + phone + ", avatar=" + avatar + '}';
    }

    
}
