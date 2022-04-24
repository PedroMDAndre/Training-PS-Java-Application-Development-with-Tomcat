<!-- Demonstrates the use of JSTL Core -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<HTML>
  <BODY>
    <H1>

		<c:set var="languageCode" value="${(header['accept-language'].split(','))[0]}"/>

		<c:choose>

			<c:when test="${languageCode == 'fr'}">
                Bonjour
			</c:when>
			<c:when test="${languageCode == 'de'}">
				Guten Tag
			</c:when>
            <c:when test="${languageCode == 'pt'}">
                Bom dia
            </c:when>
			<c:otherwise>
				Hello
			</c:otherwise>

		</c:choose>

		${param.name}
    </H1>
  </BODY>
</HTML>
