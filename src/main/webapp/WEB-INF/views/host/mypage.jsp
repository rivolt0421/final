<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>Insert title here</title>
<link href="/favicon.ico" rel="icon" type="image/x-icon">
</head>
<body>
<div class="container">
<!-- 호스트 정보 입력폼 -->
<div class="table table-bordered">
	<thead></thead>
		<tbody>
			<tr>
				<div class="row mb-3">
				<label for=inputEmail class="col-sm-2 col-form-label">E-mail</label>
					<div class="col-sm-3">
						<input type="text" readonly class="form-control-plaintext" value="지정된 이메일" id="inputEmail">
					</div>
				</div>
			</tr>
		</tbody>
		<tbody>
			<tr>
				<td>
					<div class="row mb-3">
				  		<label for="inputEmail" class="col-sm-2 col-form-label">휴대폰 번호</label>
		                    <select class="form select col-sm-2" name="phone1">
		                        <option value="010" selected="">010</option>
		                        <option value="011">011</option>
		                        <option value="016">016</option>
		                        <option value="017">017</option>
		                        <option value="018">018</option>
		                        <option value="019">019</option>
		                    </select>
						<div class="col-2">
							<input type="text" class="form-control" name="phone2">
						</div>
						<div class="col-2">
							<input type="text" class="form-control" name="phone3">
						</div>
					</div>
				</td>
			</tr>
		</tbody>
		<tbody>
			<tr>
				<td>
					<div class="row mb-3">
				  		<label for="inputEmail" class="col-sm-2 col-form-label">휴대폰 번호</label>
		                    <select class="form select col-sm-2" name="phone1">
		                        <option value="010" selected="">010</option>
		                        <option value="011">011</option>
		                        <option value="016">016</option>
		                        <option value="017">017</option>
		                        <option value="018">018</option>
		                        <option value="019">019</option>
		                    </select>
						<div class="col-2">
							<input type="text" class="form-control" name="phone2">
						</div>
						<div class="col-2">
							<input type="text" class="form-control" name="phone3">
						</div>
					</div>
				<div class="row mb-3">
					<label for="inputEmail" class="col-sm-2 col-form-label">대표 번호</label>
				  		<select class="form select col-sm" name="tel1">
	                        <option value="02" selected="">02</option>
	                        <option value="031">031</option>
	                        <option value="032">032</option>
	                        <option value="033">033</option>
	                        <option value="041">041</option>
	                        <option value="042">042</option>
	                        <option value="043">043</option>
	                        <option value="051">051</option>
	                        <option value="052">052</option>
	                        <option value="053">053</option>
	                        <option value="054">054</option>
	                        <option value="055">055</option>
	                        <option value="061">061</option>
	                        <option value="062">062</option>
	                        <option value="063">063</option>
	                        <option value="064">064</option>
	                        <option value="0502">0502</option>
	                        <option value="070">070</option>
	                        <option value="010">010</option>
	                        <option value="011">011</option>
	                        <option value="016">016</option>
	                        <option value="017">017</option>
	                        <option value="018">018</option>
	                        <option value="019">019</option>
		                 </select>
					<div class="col-sm">
						<input type="text" class="form-control" name="tel2">
					</div>
					<div class="col-sm">
						<input type="text" class="form-control" name="tel3">
					</div>
				</div>
			</td>
		</tr>
	</tbody>
<hr>
	<tbody>
		<tr>
			<td>
				<div class="row mb-3">
				<label for="inputNumber" class="col-sm-2 form-label">예약 정산/입금 계좌 정보</label>
					<select class="form select col-sm">
	                    <option value="">선택</option>
	                    <option value="한국은행">한국은행</option>
	                    <option value="산업은행">산업은행</option>
	                    <option value="기업은행">기업은행</option>
	                    <option value="국민은행">국민은행</option>
	                    <option value="외환은행">외환은행</option>
	                    <option value="수협중앙회">수협중앙회</option>
	                    <option value="수출입은행">수출입은행</option>
	                    <option value="농협중앙회">농협중앙회</option>
	                    <option value="단위농협(축협)">단위농협(축협)</option>
	                    <option value="우리은행">우리은행</option>
	                    <option value="SC제일은행">SC제일은행</option>
	                    <option value="한국씨티은행">한국씨티은행</option>
	                    <option value="새마을금고">새마을금고</option>
	                    <option value="신협중앙회">신협중앙회</option>
	                    <option value="우체국">우체국</option>
	                    <option value="하나은행">하나은행</option>
	                    <option value="신한은행">신한은행</option>
	                    <option value="대구은행">대구은행</option>
	                    <option value="부산은행">부산은행</option>
	                    <option value="광주은행">광주은행</option>
	                    <option value="제주은행">제주은행</option>
	                    <option value="전북은행">전북은행</option>
	                    <option value="경남은행">경남은행</option>
	                    <option value="상호저축은행">상호저축은행</option>
	                    <option value="산림조합중앙회">산림조합중앙회</option>
	                    <option value="케이뱅크">케이뱅크</option>
	                    <option value="카카오뱅크">카카오뱅크</option>
	                 </select>
			</div>
			<div class="row mb-3">
			    <label for="inputNumber" class="col-sm-2 col-form-label">예금주</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" name="bankUserName">
					</div>
			</div>
			<div class="row mb-3">
				<label for="inputDate" class="col-sm-2 col-form-label">계좌번호</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" name="bankNumber">
					</div>
			</div>
	            <p class="fs-6">*주 정산의 경우 익주 수요일에, 월정산의 경우, 익월 첫째주 수요일에 정산 입금됩니다.</p>
	            <p class="fs-6">*자세한 사항은 영업담당자 또는 고객행복센터에 문의해 주시기 바랍니다.</p>
			</td>
		</tr>
	</tbody>		
<hr>
	<tbody>
		<tr>
			<td>
				<div class="row mb-3">
				<label for="inputTime" class="col-sm-2 col-form-label">상호명(법인명)</label>
					<div class="col-sm-3">
						<input type="text" class="form-control">
					</div>
				</div>
				<div class="row mb-3">
					<label for="inputColor" class="col-sm-2 col-form-label">대표자명(호스트 이름)</label>
						<div class="col-sm-3">
							<input type="text" class="form-control">
						</div>
				</div>
				<div class="row mb-3">
					<label for="inputPassword" class="col-sm-2 col-form-label">업태</label>
						<div class="col-sm-auto">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck1">
								<label class="form-check-label" for="gridCheck1">숙박</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck2">
								<label class="form-check-label" for="gridCheck2">음식</label>
							</div>
						</div>
						<div class="col-sm-auto">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck3">
								<label class="form-check-label" for="gridCheck3">기타</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck4">
								<label class="form-check-label" for="gridCheck4">서비스</label>
							</div>
						</div>
						<div class="col-sm-auto">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck5">
								<label class="form-check-label" for="gridCheck5">음식 및 숙박</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck6">
								<label class="form-check-label" for="gridCheck6">부동산</label>
							</div>
						</div>
						<div class="col-sm-auto">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck7">
								<input class="form-input col-sm-5" type="text" id="gridCheck7">
							</div>
						</div>
				</div>
				<div class="row mb-3">
					<label for="inputPassword" class="col-sm-2 col-form-label">업종</label>
						<div class="col-sm-auto">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck1">
								<label class="form-check-label" for="gridCheck1">민박</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck2">
								<label class="form-check-label" for="gridCheck2">기타</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck3">
								<label class="form-check-label" for="gridCheck3">호스텔</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck4">
								<label class="form-check-label" for="gridCheck4">호텔</label>
							</div>
						</div>
						<div class="col-sm-auto">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck5">
								<label class="form-check-label" for="gridCheck5">외국인도시민박</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck6">
								<label class="form-check-label" for="gridCheck6">여관</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck7">
								<label class="form-check-label" for="gridCheck7">모텔</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck8">
								<label class="form-check-label" for="gridCheck8">관광호텔</label>
							</div>
						</div>
						<div class="col-sm-auto">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck9">
								<label class="form-check-label" for="gridCheck9">게스트하우스</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck10">
								<label class="form-check-label" for="gridCheck10">숙박</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck11">
								<label class="form-check-label" for="gridCheck11">관광</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck12">
								<label class="form-check-label" for="gridCheck12">일반여행</label>
							</div>
						</div>
						<div class="col-sm-auto">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck13">
								<label class="form-check-label" for="gridCheck13">한옥체험</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck14">
								<label class="form-check-label" for="gridCheck14">펜션</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck15">
								<label class="form-check-label" for="gridCheck15">임대</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck16">
								<label class="form-check-label" for="gridCheck16">무인텔</label>
							</div>
						</div>
						<div class="col-sm-auto">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck7">
								<input class="form-input col-sm-5" type="text" id="gridCheck7">
							</div>
						</div>
				</div>
			</td>
		</tr>
	</tbody>		
</div>
</div>
</body>
</html>