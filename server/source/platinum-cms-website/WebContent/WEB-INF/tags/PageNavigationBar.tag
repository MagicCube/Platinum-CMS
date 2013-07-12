<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="id" required="true" rtexprvalue="true"%>
<%@ attribute name="pageIndex" rtexprvalue="true" type="java.lang.Integer"%>
<%@ attribute name="pageSize" rtexprvalue="true" type="java.lang.Integer"%>
<%@ attribute name="displayNextButton" rtexprvalue="true" type="java.lang.Boolean"%>
<%
if (displayNextButton == null)
{
    displayNextButton = true;
}
%>

<div id="${id}" class="PageNavigationBar" style="text-align:center;padding-bottom:5px;">
    <span id="pageIndex">第<span>${pageIndex + 1}</span>页</span>
    <%if (pageIndex > 0) {%>
    | <a id="previousPage" href="1">第一页</a>
    | <a id="previousPage" href="${pageIndex}">&lt;上一页</a>
    <%} %>
    <% if (displayNextButton) {%>
    | <a id="nextPage" href="${pageIndex + 2}">下一页&gt;</a>
    <%} %>
</div>