<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:include page="./partials/head.jsp"/>



<c:set var="message" value='${requestScope["message"]}' />
<c:if test='${fn:contains(message, "docusign.com/oauth/auth") }'>

    <c:redirect url="${message}" />

</c:if>


<p><strong>Oops, we have encountered a problem.</strong></p>

<p><em>Error information: </em>${message}</p>

<p>Please check your account configuration. If you are unable to resolve the problem, file an issue on github.</p>


<p><a href="/">Continue</a></p>

<jsp:include page="./partials/foot.jsp"/>