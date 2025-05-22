package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Account;

public class AccountDAO extends DBContext {

    public Account check(String username, String password) {
        String sql = "SELECT [Id]\n"
                + "      ,[Username]\n"
                + "      ,[Password]\n"
                + "      ,[role]\n"
                + "      ,[Address]\n"
                + "      ,[Phone]\n"
                + "      ,[Avatar]\n"
                + "  FROM [dbo].[Admin]\n"
                + "  where [Username]=? and [Password]=?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new Account(rs.getInt("id"), username,
                        password, rs.getBoolean("role"),
                        rs.getString("address"), rs.getString("phone"),
                        rs.getString("avatar"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Account checkAccountExist(String user) {
        String sql = "select * from Admin where [Username]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getBoolean(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Account getkAccount(int uid) {
        String sql = "select * from Admin where [Id]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, uid);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getBoolean(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void signup(Account a) {
        String sql = "insert into [Admin] ([Username], [Password],[role],[Address],[Phone],[Avatar]) values (?,?,0,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, a.getUsername());
            st.setString(2, a.getPassword());
            st.setString(3, a.getAddress());
            st.setString(4, a.getPhone());
            st.setString(5, a.getAvatar());
            System.out.println(sql);
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
        public void update(String name, String address, String phone, String avatar,String id) {
        String sql = "   update [Admin] set [Username]=? ,[Address]=? ,[Phone] =?  ,[Avatar]=? where [Id] =  "+id;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, address);
            st.setString(3, phone);
            st.setString(4,avatar);
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    

   
    
}
