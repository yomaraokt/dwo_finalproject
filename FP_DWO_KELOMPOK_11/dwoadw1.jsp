<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/dwofinal?user=root&password=" catalogUri="/WEB-INF/queries/dwoadw1.xml">

select [Measures].[Sub Total] ON COLUMNS,
  {([Costumer].[All Costumer],[Time_dimens].[All Times],[Salesorder],[Salesreason],[Territory])} ON ROWS
from [Jual]


</jp:mondrianQuery>





<c:set var="title01" scope="session">Query DWOUTS Sales using Mondrian OLAP</c:set>
