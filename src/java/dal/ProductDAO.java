/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Account;
import model.Product;

/**
 *
 * @author 84379
 */
public class ProductDAO extends DBContext {

    public ArrayList<Product> get6LastestProduct() {
        ArrayList<Product> list = new ArrayList();
        String sql = "select top 6 * from product order by CreateDate desc";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                System.out.println(rs.getInt(1) + " " + rs.getString(2));
                Product p = new Product(rs.getInt(1), rs.getString(2), rs.getInt(3),
                        rs.getDouble(4), rs.getDouble(5), rs.getDate(6), rs.getString(7), rs.getString(8));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
//    public static void main(String[] args) {
//        ProductDAO p = new ProductDAO();
//        System.out.println(p.get6LastestProduct().size());
//    }

    public ArrayList<Product> get6BestSaleOffProduct() {
        ArrayList<Product> list = new ArrayList();
        String sql = "select  top 8  *, (Price- Discount) as downPrice from product \n"
                + " order by downPrice desc";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt(1), rs.getString(2), rs.getInt(3),
                        rs.getDouble(4), rs.getDouble(5), rs.getDate(6), rs.getString(7), rs.getString(8));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public ArrayList<Product> get6TopSellingProduct() {
        ArrayList<Product> list = new ArrayList();
        String sql = "select top 6 p.* from Product p, (select sum(quantity) as numberSell, [product_id] from OrderDetail group by [product_id]) as b\n"
                + "              where b.[product_id] = p.Id order by b.numberSell desc";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt(1), rs.getString(2), rs.getInt(3),
                        rs.getDouble(4), rs.getDouble(5), rs.getDate(6), rs.getString(7), rs.getString(8));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Product getProductById(int id) {
        String sql = "select * from Product where Id  = " + id;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt(1), rs.getString(2), rs.getInt(3),
                        rs.getDouble(4), rs.getDouble(5), rs.getDate(6), rs.getString(7), rs.getString(8));
                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public ArrayList<Product> getListProductPage(String name, String fromPrice, String toPrice,int index) {
        ArrayList<Product> list = new ArrayList();
        String sql = "select * from Product\n"
                + "  where [Name] like '%" + name + "%' and Discount >=" + fromPrice + " and Discount <= " + toPrice 
                +"   Order by [Discount] asc\n" +
                "  OFFSET "+(index-1)*6+" ROWS FETCH NEXT 6  ROWS ONLY";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt(1), rs.getString(2), rs.getInt(3),
                        rs.getDouble(4), rs.getDouble(5), rs.getDate(6), rs.getString(7), rs.getString(8));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e );
        }
        return list;
    }
    public ArrayList<Product> getListProduct(String name, String fromPrice, String toPrice ) {
        ArrayList<Product> list = new ArrayList();
        String sql = "select * from Product\n"
                + "  where [Name] like '%" + name + "%' and Discount >=" + fromPrice + " and Discount <= " + toPrice ;
               
        try {
            PreparedStatement stm = connection.prepareStatement(sql);

            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt(1), rs.getString(2), rs.getInt(3),
                        rs.getDouble(4), rs.getDouble(5), rs.getDate(6), rs.getString(7), rs.getString(8));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    public void addProduct(String name, String quantity, String price, String discount, String desc, String img) {
        String sql = "insert into Product ( [Name], Quantity, Price,Discount, CreateDate,[description], img) values (?,?,?,?,getdate(),?,?)";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2, quantity);
            stm.setString(3, price);
            stm.setString(4, discount);
            stm.setString(5, desc);
            stm.setString(6, img);
            stm.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void deleteProduct(String pid) {
        String sql = "delete Product where id = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, pid);
            stm.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void updateProduct(String name, String quantity, String price, String discount, String desc, String img, String pid) {
        String sql = "update Product set [Name] =?, Quantity=?, Price=?,Discount=?,[description] =?, img=? where id = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2, quantity);
            stm.setString(3, price);
            stm.setString(4, discount);
            stm.setString(5, desc);
            stm.setString(6, img);
            stm.setString(7, pid);
            stm.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public String getTotalProduct() {
        String sql = " select count(*) from Product";
        String output = "";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                output = rs.getString(1);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return output;
    }


    public String getTotalUser() {
        String sql = "select count(*) from [Order]";
        String output = "";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                output = rs.getString(1);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return output;
    }

    public String getAVGPrice() {
        String sql = "select AVG(Price) from Product";
        String output = "";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                output = rs.getString(1);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return output;
    }
    
    public String getMinPrice() {
        String sql = "Select min(Price) from Product";
        String output = "";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                output = rs.getString(1);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return output;
    }
    
        public String getMaxPrice() {
        String sql = "Select max(Price) from Product";
        String output = "";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                output = rs.getString(1);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return output;
    }
    public String getSumDiscount() {
        String sql = " Select SUM(discount) from Product";
        String output = "";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                output = rs.getString(1);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return output;
    }
}
