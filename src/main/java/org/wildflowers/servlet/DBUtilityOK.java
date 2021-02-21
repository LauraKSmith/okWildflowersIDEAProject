package org.wildflowers.servlet;


/*package org.pollinator.servlet; */


import java.sql.*;
import java.util.logging.Logger;

public class DBUtilityOK {
    private static final String Driver = "org.postgresql.Driver";
    private static final Logger logger = Logger.getLogger(DBUtilityOK.class.getName());

    /*private static final String ConnUrl = "jdbc:postgresql://ec2-18-235-20-228.compute-1.amazonaws.com:5432/d5lucrbuppa2h7";
    private static final String Username = "zpxhyiszlihrzk";
    private static final String Password = "d8071070280d011e26ffa689ac4946852dd0a76c1f3887361653b8f55f4055da"; */


    private static final String ConnUrl = "jdbc:postgresql://ec2-34-197-188-147.compute-1.amazonaws.com:5432/d92h8lktlufbl9";
    private static final String Username = "jmgqkivkfomtda";
    private static final String Password = "ec658f08c52208adc0b4b076d6eaebcbcfd9436b85c0d68eea0b633b856a4549";

    // This is a constructor
    public DBUtilityOK() {
    }

    // create a Connection to the database
    private Connection connectDB() {
        logger.info("Connection Url: " + ConnUrl);
        Connection conn = null;
        try {
            Class.forName(Driver);
            conn = DriverManager.getConnection(ConnUrl, Username, Password);
            logger.info("Successfully established connection");
            return conn;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    // execute a sql query (e.g. SELECT) and return a ResultSet
    public ResultSet queryDB(String sql) {
        Connection conn = connectDB();
        ResultSet res = null;
        try {
            if (conn != null) {
                Statement stmt = conn.createStatement();
                res = stmt.executeQuery(sql);
                conn.close();
                logger.info("Able to execute query");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }

    // execute a sql query (e.g. INSERT) to modify the database;
    // no return value needed
    public void modifyDB(String sql) {
        Connection conn = connectDB();
        try {
            if (conn != null) {
                Statement stmt = conn.createStatement();
                logger.info("Query String:" + sql );
                stmt.execute(sql);
                stmt.close();
                conn.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * @param args
     * @throws SQLException
     */
    public static void main(String[] args) throws SQLException {
        // You can test the methods you created here
        DBUtilityOK util = new DBUtilityOK();

//        // 1. create a user
//       util.modifyDB("insert into wildflowers (county, scientific_name) values ('ztest', 'ztest')");

        // 2. query the database
        ResultSet res = util.queryDB("select * from okwildflower");
        while (res.next()) {
            System.out.println(res.getString("common_name"));
        }

    }

}