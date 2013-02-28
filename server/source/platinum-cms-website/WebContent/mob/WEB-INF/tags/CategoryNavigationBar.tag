<%@tag import="platinum.cms.runtime.service.CategoryRuntimeManager"%>
<%@tag import="platinum.cms.common.entity.SubcategoryEntity"%>
<%@tag import="platinum.cms.common.entity.CategoryEntity"%>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="id" required="true" rtexprvalue="true"%>
<%@ attribute name="categoryId" required="true" rtexprvalue="true"%>
<%@ attribute name="subcategoryId" rtexprvalue="true"%>

<%
CategoryEntity category = CategoryRuntimeManager.getInstance().getCategory(categoryId);
SubcategoryEntity subcategory = null;

if (subcategoryId != null)
{
    subcategory = CategoryRuntimeManager.getInstance().getSubcategory(subcategoryId);
}
%>

<!--  <ul id="${id}" class="CategoryNavigationBar">
	<li>当前位置:</li>
    <li> &gt; <a href="/${categoryId}/"><%= category != null ? category.getCategoryName() : categoryId%></a></li>
    <% if (subcategoryId != null) {%>
    <li> &gt; <a href="/${categoryId}/${subcategoryId}/more/"><%= subcategory != null ? subcategory.getSubcategoryName() : subcategoryId%></a></li>
    <%} %>
</ul>-->
<table id="${id}" class="CategoryNavigationBar"  cellpadding="0" cellspacing="0">
  	<tr align="left">
       	<td>当前位置:</td>
        <td>&gt;<a href="/${categoryId}/"><%= category != null ? category.getCategoryName() : categoryId%></a></td>
         <% if (subcategoryId != null) {%>
     	<td> &gt;<a href="/${categoryId}/${subcategoryId}/more/"><%= subcategory != null ? subcategory.getSubcategoryName() : subcategoryId%></a></td>
     	<%} %>  
     </tr>
 </table>