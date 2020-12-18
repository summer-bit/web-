<body>
   <%
      List<AllNewsModel> allNews=(List<AllNewsModel>)request.getAttribute("AllNews");
   %>
   <table>
      <tr>
         <th>武汉纺织大学</th>
         <th>组织工作</th>
         <th>干部工作</th>
      </tr>
     <%
     for(AllNewsModel news:allNews ){
      %>
      <tr>
         <td><%=news.getNid() %></td>
         <td><%=news.getNtitle() %></td>
         <td><%=news.getNtype() %></td>
      </tr>
   <%
   }
   %>
   </table>
</body>