<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/dwofinal?user=root&password=" catalogUri="/WEB-INF/queries/dwoadw2.xml">

select [Measures].[Orderqty] ON COLUMNS,
  {([Location],[Product].[All Products],[Transaction],[Time_dimens].[All Times])} ON ROWS
from [Barang]


</jp:mondrianQuery>





<c:set var="title01" scope="session">Query DWO Product using Mondrian OLAP</c:set>
