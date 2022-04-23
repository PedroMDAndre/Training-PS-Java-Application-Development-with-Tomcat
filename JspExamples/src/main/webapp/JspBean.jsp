<!-- Demonstrates the use of JSP with Java beans -->

<%@ page import="javawebapps.HelloHelper" %>
<HTML>
	<BODY>
		<H1>
			<jsp:useBean id="helper" class="javawebapps.HelloHelper" scope= "application"/>
			
			<%= helper.getGreeting(request.getLocale()) %> ${param.name}
		
		</H1>
	</BODY>
</HTML>