package org.wildflowers.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.wildflowers.servlet.DBUtilityOK;

/**
 * Servlet implementation class HttpServlet
 */
@WebServlet("/HttpServlet")
public class HttpServlet extends javax.servlet.http.HttpServlet {
    private static final long serialVersionUID = 1L;


    /**
     // @see javax.servlet.http.HttpServlet#javax.servlet.http.HttpServlet()
     */

    public HttpServlet() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }


    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse
            response) throws ServletException, IOException {
        System.out.println("httpservlet, in doPost");
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        String tab_id = request.getParameter("tab_id");

        // create an observation
        if (tab_id.equals("0")) {
            System.out.println("An observation is submitted!");
            try {
                createObservation(request, response);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        // query observations
        else if (tab_id.equals("1")) {
            System.out.println("A query is submitted!");
            try {
                System.out.println("httpServlet, ready to call query observation");
                queryObservation(request, response);
            } catch (JSONException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (SQLException e) {
                System.out.println("httpServlet, query observation exception");
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }

    private void createObservation(HttpServletRequest request, HttpServletResponse
            response) throws SQLException, IOException {
        System.out.println("httpServlet, create observation");

        DBUtilityOK dbutil = new DBUtilityOK();
        String sql;

        System.out.println("httpServlet, create observation 2");
        // 3. create report
        int report_id = 0;
        String county = request.getParameter("county");
        String genus = request.getParameter("genus");
        System.out.println("httpServlet, create observation genus: " + genus);

        String lon = request.getParameter("longitude");
        System.out.println("httpServlet, create observation lon: " + lon);

        String lat = request.getParameter("latitude");
        System.out.println("httpServlet, create observation lat: " + lat);

        String scientific_name = request.getParameter("scientific_name");
        String biome = request.getParameter("biome");
        String date = request.getParameter("date");
        System.out.println("httpServlet, create observation date: " + date);

        String common_name = request.getParameter("common_name");
        System.out.println("httpServlet, create observation common name: " + common_name);

        String habitat = request.getParameter("habitat");
        System.out.println("httpServlet, create observation habitat: " + habitat);

        String recorded_by = request.getParameter("recorded_by");

        String type = request.getParameter("type");
        System.out.println("common name: " + common_name + ", genus: " + genus + ", Recorded by: " + recorded_by);

        /* commented out section on 2/24/2021 for testing
        if (county != null)
            {
                county = "'" + county + "'";
            }
            */
        if (genus != null)
            {
                genus = "'" + genus + "'";
            }
        /*
        if (type != null)
            {
                type = "'" + type + "'";
            }
        if (scientific_name != null)
            {
                scientific_name = "'" + scientific_name + "'";
            }
            */

        if (common_name != null)
            {
                common_name = "'" + common_name + "'";
            }

        if (habitat != null)
            {
                habitat = "'" + habitat + "'";
            }

        if (recorded_by != null)
            {
                recorded_by = "'" + recorded_by + "'";
            }

        if (date != null)
            {
                date = "'" + date + "'";
            }
        /*
        if (biome != null)
            {
                biome = "'" + biome + "'";
            }

        */

        System.out.println(biome);
        

        sql = "insert into pollinator (genus, common_name, habitat, recorded_by, date, geom)" +
                " values (" + genus + "," + common_name + "," + habitat + "," + recorded_by + "," + date +
                ", ST_GeomFromText('POINT(" + lon + " " + lat + ")', 4326))";
        dbutil.modifyDB(sql);
        System.out.println("SQL: " + sql);

        // record report_id
        ResultSet res_3 = dbutil.queryDB("select last_value from pollinator_id_seq");
        res_3.next();
        report_id = res_3.getInt(1);

        System.out.println("Success! Observation created.");

        // response that the observation submission is successful
        JSONObject data = new JSONObject();
        try {
            data.put("status", "success");
        } catch (JSONException e) {
            e.printStackTrace();
        }
        response.getWriter().write(data.toString());
    }

    private void queryObservation(HttpServletRequest request, HttpServletResponse
            response) throws JSONException, SQLException, IOException {
        //create an empty JSON array to pass into the query helper
        JSONArray list = new JSONArray();
        System.out.println("httpservlet, in query Observation");
        String sql = "select id, habitat, common_name, biome, recorded_by, county, date, genus, " +
                "scientific_name, ST_X(geom) as " +
                "longitude, ST_Y(geom) as latitude from pollinator";
        String genusParam = request.getParameter("genus");
        String commonParam = request.getParameter("common");
        String countyParam = request.getParameter("county");
        String biomeParam = request.getParameter("biome");
        String startDate = request.getParameter("start_date");
        String endDate = request.getParameter("end_date");

        //nested if statements to generate sql query statement from user input: refactor this using hashmap?
        if (startDate == null) {
            if (endDate == null) {
                if (genusParam == null) {
                    if (commonParam == null) {
                        if (countyParam == null){
                            if (biomeParam == null) {
                                sql = sql;
                            }
                            if (biomeParam != null) {
                                sql += " where biome = " + "'" + biomeParam + "'";
                            }
                        }
                        if (countyParam != null) {
                            if (biomeParam == null) {
                                sql += " where county = " + "'" + countyParam + "'";
                            }
                            if (biomeParam != null) {
                                sql += " where county = " + "'"
                                        + countyParam + "' and biome = '" + biomeParam + "'";
                            }
                        }
                    }
                    if (commonParam != null) {
                        if (countyParam == null) {
                            if (biomeParam != null) {
                                sql += " where common_name = " + "'"
                                        + commonParam + "' and biome = '" + biomeParam + "'";
                            }
                            if (biomeParam == null) {
                                sql += " where common_name = " + "'" + commonParam + "'";
                            }
                        }
                        if (countyParam != null) {
                            if (biomeParam == null) {
                                sql += " where common_name = " + "'" + commonParam + "'" +
                                        "and county = '" + countyParam + "'";
                            }
                            if (biomeParam != null) {
                                sql += " where common_name = " + "'" + commonParam + "'" +
                                        "and county = '" + countyParam + "' and biome = '" + biomeParam + "'";
                            }
                        }
                    }
                }
                if (genusParam != null) {
                    if (commonParam == null) {
                        if (countyParam == null) {

                            if (biomeParam == null) {
                                sql += " where genus = " + "'" + genusParam + "'";
                            }
                            if (biomeParam != null) {
                                sql += " where genus = "
                                        + "'" + genusParam + "' and biome = '" + biomeParam + "'";
                            }
                        }
                        if (countyParam != null) {
                            if (biomeParam == null) {
                                sql += " where genus = "
                                        + "'" + genusParam + "' and county = '" + countyParam + "'";
                            }
                            if (biomeParam != null) {
                                sql += " where genus = "
                                        + "'" + genusParam + "' and county = '" + countyParam + "' and biome = '" + biomeParam + "'";
                            }
                        }
                    }
                    if (commonParam != null) {
                        if (countyParam == null) {
                            if (biomeParam == null) {
                                sql += " where genus = "
                                        + "'" + genusParam + "' and common_name = '" + commonParam + "'";
                            }
                            if (biomeParam != null) {
                                sql += " where genus = "
                                        + "'" + genusParam + "' and common_name = '" + commonParam + "' and biome = '" + biomeParam + "'";
                            }
                        }
                        if (countyParam != null) {
                            if (biomeParam == null) {
                                sql += " where common_name = " + "'" + commonParam + "' " +
                                        "and county = '" + countyParam + "' and genus =" + "'" + genusParam + "'";
                            }
                            if (biomeParam != null) {
                                sql += " where common_name = " + "'" + commonParam + "' " +
                                        "and county = '" + countyParam + "' and genus =" + "'" + genusParam + "' and biome =" + "'" + biomeParam + "'";
                            }
                        }
                    }
                }
            }
            if (endDate != null){
                if (genusParam == null) {
                    if (commonParam == null) {
                        if (countyParam == null){
                            if (biomeParam == null) {
                                sql += " where date <= " + "'" + endDate + "'";
                            }
                            if (biomeParam != null) {
                                sql += " where biome = " + "'" + biomeParam + "'and date <= " + "'" + endDate + "'";
                            }
                        }
                        if (countyParam != null) {
                            if (biomeParam == null) {
                                sql += " where county = " + "'" + countyParam + "'and date <= " + "'" + endDate +  "'";
                            }
                            if (biomeParam != null) {
                                sql += " where county = " + "'"
                                        + countyParam + "' and biome = '" + biomeParam + "'and date <= " + "'" + endDate +  "'";
                            }
                        }
                    }
                    if (commonParam != null) {
                        if (countyParam == null) {
                            if (biomeParam != null) {
                                sql += " where common_name = " + "'"
                                        + commonParam + "' and biome = '" + biomeParam + "'and date <= " + "'" + endDate +  "'";
                            }
                            if (biomeParam == null) {
                                sql += " where common_name = " + "'" + commonParam + "'and date <= " + "'" + endDate +  "'";
                            }
                        }
                        if (countyParam != null) {
                            if (biomeParam == null) {
                                sql += " where common_name = " + "'" + commonParam + "'" +
                                        "and county = '" + countyParam + "'and date <= " + "'" + endDate +  "'";
                            }
                            if (biomeParam != null) {
                                sql += " where common_name = " + "'" + commonParam + "'" +
                                        "and county = '" + countyParam + "' and biome = '" + biomeParam + "'and date <= " + "'" + endDate +  "'";
                            }
                        }
                    }
                }
                if (genusParam != null) {
                    if (commonParam == null) {
                        if (countyParam == null) {
                            if (biomeParam == null) {
                                sql += " where genus = " + "'" + genusParam + "'and date <= " + "'" + endDate +  "'";
                            }
                            if (biomeParam != null) {
                                sql += " where genus = "
                                        + "'" + genusParam + "' and biome = '" + biomeParam + "' and date <= " + "'" + endDate +  "'";
                            }
                        }
                        if (countyParam != null) {
                            if (biomeParam == null) {
                                sql += " where genus = "
                                        + "'" + genusParam + "' and county = '" + countyParam + "'and date <= " + "'" + endDate +  "'";
                            }
                            if (biomeParam != null) {
                                sql += " where genus = "
                                        + "'" + genusParam + "' and county = '" + countyParam + "' and biome = '" + biomeParam + "'and date <= " + "'" + endDate +  "'";
                            }
                        }
                    }
                    if (commonParam != null) {
                        if (countyParam == null) {
                            if (biomeParam == null) {
                                sql += " where genus = "
                                        + "'" + genusParam + "' and common_name = '" + commonParam + "'and date <= " + "'" + endDate +  "'";
                            }
                            if (biomeParam != null) {
                                sql += " where genus = "
                                        + "'" + genusParam + "' and common_name = '" + commonParam + "' and biome = '" + biomeParam + "'and date <= " + "'" + endDate + "'";
                            }
                        }
                        if (countyParam != null) {
                            if (biomeParam == null) {
                                sql += " where common_name = " + "'" + commonParam + "' " +
                                        "and county = '" + countyParam + "' and genus =" + "'" + genusParam + "'and date <= " + "'" + endDate + "'";
                            }
                            if (biomeParam != null) {
                                sql += " where common_name = " + "'" + commonParam + "' " +
                                        "and county = '" + countyParam + "' and genus =" + "'" + genusParam + "' and biome =" + "'"
                                        + biomeParam + "'and date <= " + "'" + endDate + "'";
                            }
                        }
                    }
                }
            }
        }

        else if (startDate != null) {
            if (endDate == null) {
                if (genusParam == null) {
                    if (commonParam == null) {
                        if (countyParam == null){
                            if (biomeParam == null) {
                                sql += " where date >= " + "'" + startDate + "'";
                            }
                            if (biomeParam != null) {
                                sql += " where biome = " + "'" + biomeParam + "'and date >= " + "'" + startDate + "'";
                            }
                        }
                        if (countyParam != null) {
                            if (biomeParam == null) {
                                sql += " where county = " + "'" + countyParam + "'and date >= " + "'" + startDate + "'";
                            }
                            if (biomeParam != null) {
                                sql += " where county = " + "'"
                                        + countyParam + "' and biome = '" + biomeParam + "'and date >= " + "'" + startDate + "'";
                            }
                        }
                    }
                    if (commonParam != null) {
                        if (countyParam == null) {
                            if (biomeParam != null) {
                                sql += " where common_name = " + "'"
                                        + commonParam + "' and biome = '" + biomeParam + "'and date >= " + "'" + startDate + "'";
                            }
                            if (biomeParam == null) {
                                sql += " where common_name = " + "'" + commonParam + "'and date >= " + "'" + startDate + "'";
                            }
                        }
                        if (countyParam != null) {
                            if (biomeParam == null) {
                                sql += " where common_name = " + "'" + commonParam + "'" +
                                        "and county = '" + countyParam + "'and date >= " + "'" + startDate + "'";
                            }
                            if (biomeParam != null) {
                                sql += " where common_name = " + "'" + commonParam + "'" +
                                        "and county = '" + countyParam + "' and biome = '" + biomeParam + "'and date >= " + "'" + startDate + "'";
                            }
                        }
                    }
                }
                if (genusParam != null) {
                    if (commonParam == null) {
                        if (countyParam == null) {
                            if (biomeParam == null) {
                                sql += " where genus = " + "'" + genusParam + "'and date >= " + "'" + startDate + "'";
                            }
                            if (biomeParam != null) {
                                sql += " where genus = "
                                        + "'" + genusParam + "' and biome = '" + biomeParam + "'and date >= " + "'" + startDate + "'";
                            }
                        }
                        if (countyParam != null) {
                            if (biomeParam == null) {
                                sql += " where genus = "
                                        + "'" + genusParam + "' and county = '" + countyParam + "'and date >= " + "'" + startDate + "'";
                            }
                            if (biomeParam != null) {
                                sql += " where genus = "
                                        + "'" + genusParam + "' and county = '" + countyParam + "' and biome = '" + biomeParam + "'and date >= " + "'" + startDate + "'";
                            }
                        }
                    }
                    if (commonParam != null) {
                        if (countyParam == null) {
                            if (biomeParam == null) {
                                sql += " where genus = "
                                        + "'" + genusParam + "' and common_name = '" + commonParam + "'and date >= " + "'" + startDate + "'";
                            }
                            if (biomeParam != null) {
                                sql += " where genus = "
                                        + "'" + genusParam + "' and common_name = '" + commonParam + "' and biome = '" +
                                        biomeParam + "'and date >= " + "'" + startDate + "'";
                            }
                        }
                        if (countyParam != null) {
                            if (biomeParam == null) {
                                sql += " where common_name = " + "'" + commonParam + "' " +
                                        "and county = '" + countyParam + "' and genus =" + "'" + genusParam + "'and date >= " + "'" + startDate + "'";
                            }
                            if (biomeParam != null) {
                                sql += " where common_name = " + "'" + commonParam + "' " +
                                        "and county = '" + countyParam + "' and genus =" + "'" + genusParam + "' and biome =" + "'"
                                        + biomeParam + "'and date >= " + "'" + startDate + "'";
                            }
                        }
                    }
                }
            }
            if (endDate != null){
                if (genusParam == null) {
                    if (commonParam == null) {
                        if (countyParam == null){
                            if (biomeParam == null) {
                                sql += " where date between " + "'" + startDate + "' and " + "'" + endDate + "'";
                            }
                            if (biomeParam != null) {
                                sql += " where biome = " + "'" + biomeParam + "'and date between " + "'" + startDate + "' and " + "'" + endDate + "'";
                            }
                        }
                        if (countyParam != null) {
                            if (biomeParam == null) {
                                sql += " where county = " + "'" + countyParam + "'and date between " + "'" + startDate + "' and " + "'" + endDate + "'";
                            }
                            if (biomeParam != null) {
                                sql += " where county = " + "'"
                                        + countyParam + "' and biome = '" + biomeParam + "'and date between " + "'" + startDate + "' and " + "'" + endDate + "'";
                            }
                        }
                    }
                    if (commonParam != null) {
                        if (countyParam == null) {
                            if (biomeParam != null) {
                                sql += " where common_name = " + "'"
                                        + commonParam + "' and biome = '" + biomeParam + "'and date between " + "'" + startDate + "' and " + "'" + endDate + "'";
                            }
                            if (biomeParam == null) {
                                sql += " where common_name = " + "'" + commonParam + "'and date between " + "'" + startDate + "' and " + "'" + endDate + "'";
                            }
                        }
                        if (countyParam != null) {
                            if (biomeParam == null) {
                                sql += " where common_name = " + "'" + commonParam + "'" +
                                        "and county = '" + countyParam + "'and date between " + "'" + startDate + "' and " + "'" + endDate + "'";
                            }
                            if (biomeParam != null) {
                                sql += " where common_name = " + "'" + commonParam + "'" +
                                        "and county = '" + countyParam + "' and biome = '" + biomeParam + "'and date between " + "'"
                                        + startDate + "' and " + "'" + endDate + "'";
                            }
                        }
                    }
                }
                if (genusParam != null) {
                    if (commonParam == null) {
                        if (countyParam == null) {
                            if (biomeParam == null) {
                                sql += " where genus = " + "'" + genusParam + "'and date between " + "'" + startDate + "' and " + "'" + endDate + "'";
                            }
                            if (biomeParam != null) {
                                sql += " where genus = "
                                        + "'" + genusParam + "' and biome = '" + biomeParam + "'and date between " + "'" + startDate + "' and " + "'" + endDate + "'";
                            }
                        }
                        if (countyParam != null) {
                            if (biomeParam == null) {
                                sql += " where genus = "
                                        + "'" + genusParam + "' and county = '" + countyParam + "'and date between " + "'" + startDate + "' and " + "'" + endDate + "'";
                            }
                            if (biomeParam != null) {
                                sql += " where genus = "
                                        + "'" + genusParam + "' and county = '" + countyParam + "' and biome = '" + biomeParam + "'and date between " + "'"
                                        + startDate + "' and " + "'" + endDate + "'";
                            }
                        }
                    }
                    if (commonParam != null) {
                        if (countyParam == null) {
                            if (biomeParam == null) {
                                sql += " where genus = "
                                        + "'" + genusParam + "' and common_name = '" + commonParam + "'and date between "
                                        + "'" + startDate + "' and " + "'" + endDate + "'";
                            }
                            if (biomeParam != null) {
                                sql += " where genus = "
                                        + "'" + genusParam + "' and common_name = '" + commonParam + "' and biome = '" + biomeParam + "'and date between " +
                                        "'" + startDate + "' and " + "'" + endDate + "'";
                            }
                        }
                        if (countyParam != null) {
                            if (biomeParam == null) {
                                sql += " where common_name = " + "'" + commonParam + "' " +
                                        "and county = '" + countyParam + "' and genus =" + "'" + genusParam + "'and date between " +
                                        "'" + startDate + "' and " + "'" + endDate + "'";
                            }
                            if (biomeParam != null) {
                                sql += " where common_name = " + "'" + commonParam + "' " +
                                        "and county = '" + countyParam + "' and genus =" + "'" + genusParam + "' and biome =" + "'" +
                                        biomeParam + "'and date between " + "'" + startDate + "' and " + "'" + endDate + "'";
                            }
                        }
                    }
                }
            }
        }


        queryObservationHelper(sql, list);
        response.getWriter().write(list.toString());
    }

    private void queryObservationHelper(String sql, JSONArray list) throws SQLException {

        DBUtilityOK dbutil = new DBUtilityOK();
        System.out.println("httpservlet, in observation helper");
        System.out.println("httpServlet, in observation helper SQL: " + sql);
        ResultSet res = dbutil.queryDB(sql);
        while (res.next()) {
            // add to response
            HashMap<String, String> m = new HashMap<String,String>();
            m.put("id", res.getString("id"));
            m.put("date", res.getString("date"));
            m.put("county", res.getString("county"));
            m.put("longitude", res.getString("longitude"));
            m.put("latitude", res.getString("latitude"));
            m.put("scientific_name", res.getString("scientific_name"));
            m.put("common_name", res.getString("common_name"));
            m.put("recorded_by", res.getString("recorded_by"));
            m.put("biome", res.getString("biome"));
            m.put("habitat", res.getString("habitat"));
            m.put("genus", res.getString("genus"));
            list.put(m);
        }
    }

    public void main() throws JSONException {
    }
}
