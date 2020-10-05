<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1 user-scalable=no">
<title>Insert title here</title>
<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/bootstrap-theme.css" rel="stylesheet">
<link href="/css/admin.css" rel="stylesheet">
<style>
	body {
		color: white;
	}
</style>
</head>
<body>
	<%-- top 영역  --%>
	<jsp:include page="/WEB-INF/views/include/adminTop.jsp" />
	<div class="col-md-12" id="mmm7">
		<p>영화관 수정</p>
	</div>
	<div class="container">
		<form action="/admin/modifyTheater" method="post" class="form-horizontal" role="form" name="frm" style="margin: 0 auto; width: 490px;" onsubmit="return check()">
			<table>
				<tr>
					<td>
						<div class="form-group" id="fgg">
							<label for="TheaterId">영화관ID</label>
						</div>
					</td>
					<td colspan="2">
						<div class="col-xs-10 col-lg-10">
							<input id="TheaterId" name="TheaterId" type="text" class="form-control" readonly='readonly' style="width: 298px; height: 39px; margin-bottom: 10px; margin-left: 16px;" value="${ theaterVo.theaterId }">
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="form-group" id="fgg">
							<label for="TheaterName">영화관 이름</label>
						</div>
					</td>
					<td colspan="2">
						<div class="col-xs-10 col-lg-10">
							<input id="TheaterName" name="TheaterName" type="text" style="width: 298px; height: 39px; margin-bottom: 10px; margin-left: 16px;" class="form-control" value="${ theaterVo.theaterName }">
						</div> 
						<input type="hidden" id=userZipCode name="userZipCode"> 
						<input type="hidden" id="userExtraAddr" name="userExtraAddr"> 
						<input type="hidden" id="address" name="address">
					</td>
				</tr>
				<tr>
					<td>
						<div class="form-group" id="fgg">
							<label for="FirstAddr">주소</label>
						</div>
					</td>
					<td colspan="2">
						<div>
							<input id="FirstAddr" name="FirstAddr" type="text" style="width: 298px; height: 39px; margin-bottom: 10px; margin-left: 31px;" class="form-control" placeholder="ex) 주소를 검색해 주세요">
						</div>
					</td>
					<td colspan="2">
						<div>
							<input type="button" class="form-control btn-danger" id="btn-dange" value="주소검색" onclick="execDaumPostcode()">
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="form-group" id="fgg">
							<label for="SecondAddr">상세주소 입력</label>
						</div>
					</td>
					<td colspan="2">
						<div>
							<input id="SecondAddr" name="SecondAddr" type="text" style="width: 298px; height: 39px; margin-bottom: 10px; margin-left: 31px;" class="form-control" placeholder="ex) 상세주소를 입력하세요">
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="form-group" id="fgg">
							<label for="TheaterTel">영화관 전화번호</label>
						</div>
					</td>
					<td colspan="2">
						<div>
							<input id="TheaterTel" name="number" type="tel" style="width: 298px; height: 39px; margin-bottom: 10px; margin-left: 31px;" class="form-control num" value="${ theaterVo.number }">
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="3" style="text-align: center;">
						<div class="form-group">
							<div>
								<input type="submit" class="form-control btn-primar" value="수정하기" onclick="sum()">
							</div>
						</div>
					</td>
				</tr>
			</table>
		</form>
	</div>



	<script type="text/javascript" src="/script/jquery-3.5.1.js"></script>
	<script type="text/javascript" src="/script/bootstrap.js"></script>
	
	<script>
		function check() {
			var TheaterId = $('#TheaterId').val();
			var TheaterName = $('#TheaterName').val();
			var address = $('#SecondAddr').val();
			var number = $('#TheaterTel').val();

			if (TheaterId == '') {
				alert("영화관 코드를 입력하세요");
				return false;
			} else if (TheaterName == '') {
				alert("영화관 이름 입력하세요");
				return false;
			} else if (address == '') {
				alert("영화관 주소를 입력하세요");
				return false;
			} else if (number == '') {
				alert("영화관 번호 입력하세요");
				return false;
			}

			for (var i = 1; i <= ${ totalNum }; i++) {
				var text = $('.' + i).val();
				if (text != null) {
					if ($('#TheaterId').val() == text) {
						alert('이미 사용중인 영화관 코드입니다.');
						return false;
					}
				} else {
					alert('영화관 수정 성공');
					return true;
				}
			}
		}

		$('.num')
				.keydown(
						function(e) {
							var keyVal = e.keyCode;

							if ((keyVal >= 48 && keyVal <= 57)
									|| (keyVal >= 96 && keyVal <= 105)) {
								return true;
							} else if (keyVal == 8 || keyVal == 144
									|| keyVal == 109 || keyVal == 187
									|| keyVal == 190 || keyVal == 110) {
								return true;
							} else {
								alert('숫자만 입력가능합니다.');
								return false;
							}

						});
	</script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		function execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수
							var extraAddr = ''; // 참고항목 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								// 조합된 참고항목을 해당 필드에 넣는다.
								document.getElementById("userExtraAddr").value = extraAddr;

							} else {
								document.getElementById("userExtraAddr").value = '';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('userZipCode').value = data.zonecode;
							document.getElementById("FirstAddr").value = addr;
							// 커서를 상세주소 필드로 이동한다.
							document.getElementById("SecondAddr").focus();
						}
					}).open();
		}
	</script>
	
	<script>
		function sum() {
			var FirstAddr = document.frm.FirstAddr.value;
			var SecondAddr = document.frm.SecondAddr.value;
			var userAddr = FirstAddr + ' ' + SecondAddr;
			document.frm.address.value = userAddr;
			// 			document.frm.submit();
		}
	</script>

</body>
</html>