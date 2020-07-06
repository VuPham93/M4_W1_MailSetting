<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Setting</title>
  </head>
  <body>
  <h1>Setting</h1>
  <%--@elvariable id="setting" type="controller"--%>
  <form:form method="post" action="saveSetting" modelAttribute="setting">
    <table>
      <tr>
        <td><form:label path="language">Languages: </form:label></td>
        <td>
          <form:select path="language">
            <form:option value="English" label="English"/>
            <form:option value="Vietnamese" label="Vietnamese"/>
            <form:option value="Japanese" label="Japanese"/>
            <form:option value="Chinese" label="Chinese"/>
          </form:select>
        </td>
      </tr>
      <tr>
        <td><form:label path="pageSize">Page size: </form:label></td>
        <td> Show
          <form:select path="pageSize">
            <form:option value="5" label="5"/>
            <form:option value="10" label="10"/>
            <form:option value="15" label="15"/>
            <form:option value="25" label="25"/>
            <form:option value="50" label="50"/>
            <form:option value="100" label="100"/>
          </form:select> emails per page
        </td>
      </tr>
      <tr>
        <td><form:label path="spamFilter">Spam filter: </form:label></td>
        <td>
          <form:checkbox path="spamFilter" value="enable"/>
        </td>
      </tr>
      <tr>
        <td><form:label path="signature">Spam filter: </form:label></td>
        <td>
          <form:textarea path="signature"/>
        </td>
      </tr>
    </table>
    <br><br>
    <input type="submit" value="Save setting" />
  </form:form>
  </body>
</html>
