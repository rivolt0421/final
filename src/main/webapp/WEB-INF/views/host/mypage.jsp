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
<link href="/favicon.ico" rel="icon" type="image/x-icon">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<style type="text/css">
th{
font-family: 'Do Hyeon', sans-serif;
}
td{
font-family: 'IBM Plex Sans KR', sans-serif;
}
</style>
</head>
<body>
<div class="container">
	<!-- 마이페이지 입력폼 -->
	<div class="list">
		<form method="post" action="updateMyInfo" class="pt-4 mt-4">
			<table class="table table-bordered">
				<colgroup>
				<col width="10%" class="bg-secondary p-2 text-white bg-opacity-25">
				<col width="77%">
			</colgroup>
				<tbody>
					<tr>
						<th class="text-center align-middle">호스트 정보</th>
						<td>
							<div class="row">
								<div class="col-2">이메일</div>
								<div class="col-5">(가입자 이메일)</div>
							</div>
							<div class="row pt-2 mt-2">
	                            <div class="col-2 pt-2">휴대폰 번호</div>
	                            <div class="col-1">
		                            <select name="phone1" class="form-select w-auto">
		                                <option value="010" selected="" >010</option>
		                                <option value="011">011</option>
		                                <option value="016">016</option>
		                                <option value="017">017</option>
		                                <option value="018">018</option>
		                                <option value="019">019</option>
		                            </select>
	                            </div>
	                            <span class="col-3">
                                	<input class="form-control" type="text" name="phone2" value="">
                               	</span>
                               	<span class="col-3">
                                	<input class="form-control" type="text" name="phone3" value="">
                                </span>
	                        </div>
	                        <div class="row pt-2 mt-2">
	                        	<div class="col-2 pt-2">대표 번호</div>
	                        	<div class="col-1">
	                        		<select class="form-select w-auto" name="tel1">
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
	                        	</div>
	                        	<span class="col-3">
									<input type="text" class="form-control col-3" name="tel2">
								</span>
								<span class="col-3">
									<input type="text" class="form-control col-3" name="tel3">
								</span>
	                        </div>
						</td>
					</tr>
					<tr>
						<th class="text-center align-middle">예약 정산<br>입금 계좌 정보</th>
						<td>
							<div class="row">
								<div class="col-2 pt-2">거래 은행</div>
								<div class="col-3">
									<select class="form-select w-auto" name="bank">
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
							</div>
							<div class="row pt-2 mt-2">
								<div class="col-2 pt-2">예금주</div>
								<div class="col-3">
									<input class="form-control" type="text" placeholder="이름을 입력하세요." name="bankName" value="">
								</div>
							</div>
							<div class="row pt-2 mt-2">
								<div class="col-2 pt-2">계좌번호</div>
								<div class="col-3">
									<input class="form-control" type="text" placeholder="숫자만 입력하세요." name="bankNumber" value="">
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th class="text-center align-middle">사업자 등록 정보</th>
						<td>
							<div class="">
								<div class="row">
									<div class="col-2">상호명<br>(법인명)</div>		
									<div class="col-3">
										<input class="form-control" type="text" placeholder="사업자 등록증상 상호명" name="businessName" value="">
									</div>
										<span class="fs-6 text-black-50">* 게스트하우스 이름은 별도로 기입이 가능하오니 필히 사업자 상호, 등록번호를 입력해주시기 바랍니다.</span>
								</div>
								<div class="row pt-2 mt-2">
									<div class="col-2">등록증상<br>대표명</div>		
									<div class="col-4">
										<input class="form-control mb-3" type="text" placeholder="대표자명을 입력하세요" name="businessUserName" value="">
									</div>
								</div>
								<div class="row pt-2 mt-2">
									<span class="col-2">업태</span>	
									<div class="col-auto">
										<div class="form-check">
											<input class="form-check-input" name="businessConditions" type="checkbox" id="gridCheck1">
											<label class="" for="gridCheck1">숙박</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" name="businessConditions" type="checkbox" id="gridCheck2">
											<label class="" for="gridCheck2">음식</label>
										</div>
									</div>
									<div class="col-auto">
										<div class="form-check">
											<input class="form-check-input" name="businessConditions" type="checkbox" id="gridCheck3">
											<label class="" for="gridCheck3">기타</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" name="businessConditions" type="checkbox" id="gridCheck4">
											<label class="" for="gridCheck4">서비스</label>
										</div>
									</div>
									<div class="col-auto">
										<div class="form-check">
											<input class="form-check-input" name="businessConditions" type="checkbox" id="gridCheck5">
											<label class="" for="gridCheck5">음식 및 숙박</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" name="businessConditions" type="checkbox" id="gridCheck6">
											<label class="" for="gridCheck6">부동산</label>
										</div>
									</div>
									<div class="col-auto">
										<div class="form-check">
											<input class="form-check-input" name="businessConditions" type="checkbox" id="gridCheck7">
											<input class="form-control w-50" name="businessConditions" type="text" id="gridCheck7">
										</div>
									</div>
								</div>
									<!-- 업종 -->
								<div class="row pt-2 mt-2">
									<span class="col-2">업종</span>	
									<div class="col-auto">
										<div class="form-check">
											<input class="form-check-input" name="businessTypes" type="checkbox" id="gridCheck1">
											<label class="" for="gridCheck1">민박</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" name="businessTypes" type="checkbox" id="gridCheck2">
											<label class="" for="gridCheck2">기타</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" name="businessTypes" type="checkbox" id="gridCheck3">
											<label class="" for="gridCheck3">호스텔</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" name="businessTypes" type="checkbox" id="gridCheck4">
											<label class="" for="gridCheck4">호텔</label>
										</div>
									</div>
									<div class="col-auto">
										<div class="form-check">
											<input class="form-check-input" name="businessTypes" type="checkbox" id="gridCheck5">
											<label class="" for="gridCheck5">외국인도시민박</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" name="businessTypes" type="checkbox" id="gridCheck6">
											<label class="" for="gridCheck6">여관</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" name="businessTypes" type="checkbox" id="gridCheck7">
											<label class="" for="gridCheck7">모텔</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" name="businessTypes" type="checkbox" id="gridCheck8">
											<label class="" for="gridCheck8">관광호텔</label>
										</div>
									</div>
									<div class="col-auto">
										<div class="form-check">
											<input class="form-check-input" name="businessTypes" type="checkbox" id="gridCheck9">
											<label class="" for="gridCheck9">게스트하우스</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" name="businessTypes" type="checkbox" id="gridCheck10">
											<label class="" for="gridCheck10">숙박</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" name="businessTypes" type="checkbox" id="gridCheck11">
											<label class="" for="gridCheck11">관광</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" name="businessTypes" type="checkbox" id="gridCheck12">
											<label class="" for="gridCheck12">일반여행</label>
										</div>
									</div>
									<div class="col-auto">
										<div class="form-check">
											<input class="form-check-input" name="businessTypes" type="checkbox" id="gridCheck13">
											<label class="" for="gridCheck13">한옥체험</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" name="businessTypes" type="checkbox" id="gridCheck14">
											<label class="" for="gridCheck14">펜션</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" name="businessTypes" type="checkbox" id="gridCheck15">
											<label class="" for="gridCheck15">임대</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" name="businessTypes" type="checkbox" id="gridCheck16">
											<label class="" for="gridCheck16">무인텔</label>
										</div>
									</div>
									<div class="col-auto">
										<div class="form-check">
											<input class="form-check-input" name="businessTypes" type="checkbox" id="gridCheck7">
											<input class="form-control w-50" type="text" id="gridCheck7">
										</div>
									</div>
								</div>
								</div>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="position-absolute start-50 pb-5">
				<button class="btn btn-danger btn-lg" type="submit" name="submit">저장하기</button>
			</div>
		</form>
	</div>
</div>
</body>
</html>