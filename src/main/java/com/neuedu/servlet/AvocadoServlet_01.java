package com.neuedu.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.neuedu.po.AvocadoData;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import com.mysql.cj.jdbc.MysqlDataSource;
import javax.sql.DataSource;

@WebServlet("/avocado_01")
public class AvocadoServlet_01 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json;charset=utf-8");
        PrintWriter out = resp.getWriter();

        // 创建存储牛油果数据的列表
        ArrayList<AvocadoData> avocadoDataList = new ArrayList<>();

        // 配置数据库连接：创建数据源对象
        DataSource dataSource = new MysqlDataSource();
        ((MysqlDataSource) dataSource).setUrl("jdbc:mysql://localhost:3306/mydesign"); // 设置数据库连接地址
        ((MysqlDataSource) dataSource).setUser("root"); // 设置数据库用户名
        ((MysqlDataSource) dataSource).setPassword("w1287889630"); // 设置数据库密码

        try (Connection conn = dataSource.getConnection()) {  // 获取数据库连接
            // 执行查询语句，获取牛油果数据
            String sql = "SELECT Date, AveragePrice, TotalVolume, variety4046, variety4225, variety4770, TotalBags, SmallBags, LargeBags, XLargeBags, Type, Year, Region FROM avocado";
            PreparedStatement pstmt = conn.prepareStatement(sql); // 创建PreparedStatement对象
            ResultSet rs = pstmt.executeQuery(); // 执行查询并获取结果集

            // 遍历查询结果并将每条数据封装到 AvocadoData 对象中
            while (rs.next()) {
                AvocadoData data = new AvocadoData();
                data.setDate(rs.getDate("Date"));
                data.setAveragePrice(rs.getDouble("AveragePrice"));
                data.setTotalVolume(rs.getDouble("TotalVolume"));
                data.setVariety4046(rs.getDouble("variety4046"));
                data.setVariety4225(rs.getDouble("variety4225"));
                data.setVariety4770(rs.getDouble("variety4770"));
                data.setTotalBags(rs.getInt("TotalBags"));
                data.setSmallBags(rs.getInt("SmallBags"));
                data.setLargeBags(rs.getInt("LargeBags"));
                data.setXLargeBags(rs.getInt("XLargeBags"));
                data.setType(rs.getString("Type"));
                data.setYear(rs.getInt("Year"));
                data.setRegion(rs.getString("Region"));

                avocadoDataList.add(data);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        // 将获取到的牛油果数据设置到 JSON 格式并输出到响应
        ObjectMapper objectMapper = new ObjectMapper();  // 创建 ObjectMapper 对象用于 JSON 转换
        out.print(objectMapper.writeValueAsString(avocadoDataList));  // 将数据转换为 JSON 字符串并写入响应
        out.close();  // 关闭输出流
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
