<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="dashboard_menu.jsp"%>
<script>
	function confirmDelete() {
		var status = confirm("Are you sure, you want to Delete?");
		if (status) {
			return true;
		} else {
			return false;
		}
	}

	function confirmActivate() {
		var status = confirm("Are you sure, you want to Activate?");
		if (status) {
			return true;
		} else {
			return false;
		}
	}
</script>
<style>
/* table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th {
	border: 1px solid black;
	border-collapse: collapse;
	background-color: 0000cd;
}

th, td {
	padding: 10px;
	text-align: left;
}
 */
 .tableT {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width:auto;
	margin:auto;
	background-color: rgb(77, 77, 0.3);
	font-size:17px;
	
}
tr {
	color:#FFF;
}
tr a{
 color:black;
}
th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
	background-color:#000;
	color:#FFF;
}

.td1{
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
	color:#000;
}

 
 
 </style>

	

	<h3 style="color:white">Case Worker Profiles</h3>

	<table class="tableT ">
		<thead>
			<tr>
				<th>S.No</th>
				<th>User Id</th>
				<th>User Name</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Date of birth</th>
				<th>mobile</th>
				<th>Email</th>
				<th>Action(Edit/Delete)</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${caseWorkers eq null }">
				<tr>
					<td colspan="5">No Records Found</td>
				</tr>
			</c:if>
			<c:forEach items="${caseWorkers}" var="cw" varStatus="index">
				<tr>
					<td class="td1"><c:out value="${index.count}" /></td>
					<td class="td1"><c:out value="${cw.userId}" /></td>
					<td class="td1"><c:out value="${cw.userName}" /></td>
					<td class="td1"><c:out value="${cw.firstName }" /></td>
					<td class="td1"><c:out value="${cw.lastName }" /></td>
					<td class="td1"><c:out value="${cw.dateOfBirth}" /></td>
					<td class="td1"><c:out value="${cw.mobileNamber}" /></td>
					<td class="td1"><c:out value="${cw.email }" /></td>
					<td class="td1"><a href="editCWProfile?uid=${cw.userId}"> <span class="glyphicon glyphicon-pencil"></span></a> &nbsp; 
					<c:if
							test="${cw.acountStatus=='active'}">
							<a href="deleteCwProfile?uid=${cw.userId}"
								onclick="return confirmDelete()"><span class="glyphicon glyphicon-trash"></span></a>
						</c:if> <c:if test="${cw.acountStatus=='inactive'}">
							<a href="activateCwProfile?uid=${cw.userId}"
								onclick="return confirmActivate()"> <span class="glyphicon glyphicon-ok"></span></a>
						</c:if></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<table class="tableT ">
		<tr>
			<c:if test="${cpn ne 1 }">
				<td class="td1"><a href="viewCaseWorkers?cpn=${cpn-1}"><span class="glyphicon glyphicon-fast-backward"></a></td>
			</c:if>
			<c:forEach begin="1" end="${tp}" var="pageNo">
				<c:choose>
					<c:when test="${cpn==pageNo}">
						<td class="td1">${cpn}</td>
					</c:when>
					<c:otherwise>
						<td class="td1"><a href="viewCaseWorkers?cpn=${pageNo}">${pageNo}</a></td>
					</c:otherwise>
				</c:choose>
			</c:forEach>

			<c:if test="${cpn ne tp }">
				<td class="td1"><a href="viewCaseWorkers?cpn=${cpn+1}"><span class="glyphicon glyphicon-forward"></a></td>
			</c:if>
		</tr>
	</table>
</div>
</div>
<%@include file="footer.jsp"%>
</body>
</html>
	