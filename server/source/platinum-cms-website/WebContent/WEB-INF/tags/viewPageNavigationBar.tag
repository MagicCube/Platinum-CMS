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

<div id="${id}" class="PageNavigationBar">   
    	<%if (pageIndex > 0) {%>
    	<a id="previousPics" href="${pageIndex}">
    	<div id="previousPage"></div>
    	</a>
    	<%} %>
    
    	<% if (displayNextButton) {%>
    	<a id="nextPics"  href="${pageIndex + 2}">
    	<div id="nextPage"></div>
    	</a>
    	<%} %>

</div>
<script>
		$("#nextPics").hover(
		  function () {
		    $("#nextPage").css("background-image","url(../../static/common/images/nextHover.gif)");
		  },
		  function () {
		    $(this).removeClass("hover");
		  }
		);
</script>