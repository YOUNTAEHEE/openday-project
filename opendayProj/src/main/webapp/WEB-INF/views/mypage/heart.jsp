<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.0/font/bootstrap-icons.css" />
<link rel="stylesheet"
	href="<c:url value="/resources/css/user/heart.css"/>">
<style>
</style>
</head>
<body>
	<div id="heart">
		<div class="heart-content">
			<h2 class="heart-h2">찜 클래스</h2>

			<table class="oclassTable">
				<tr class=tableTr>
					<c:forEach items="${heartList}" var="list" varStatus="status">
					
						<td class="oclass">
<!-- 						<a href="#" class="h-link"> -->
						<a href="/classinfo/${list.clsId}">
							<img src="img/${list.filNum}"
							class="h-ssum-img">
							<div class="txt-box">
								<div class="tb1">
									<div class="t1">
										<span>${list.clsLoc}</span><span>|</span><span>${list.codName}</span>
									</div>
									<div class="t2">
										<span><i class="bi bi-star-fill star"></i></span><span>${list.avgStar}</span><span>(${list.reviewCount})</span>
										<span><i class="bi bi-heart-fill heart"></i></span><span>${list.heartCnt}</span>
									</div>
								</div>
								<p class="cls-name">${list.clsName}</p>
								<div class="tb2">
									<span class="oriPrice"><strike>${list.clsPrice}원</strike></span>
									<div class="price">
										<span class="disc">${list.clsDiscount}%</span> <span
											class="fp">${list.finalPrice}원</span>
									</div>
								</div>
							</div>
							</a>
						</td>
						<c:if test="${(status.count % 4 eq 0) and (status.last eq false)}">
				</tr>
				<tr>
					</c:if>
					</c:forEach>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>