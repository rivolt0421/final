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
</head>
<body>
<div class="container">
	<!-- 마이페이지 입력폼 -->
	<div class="list">
		<form>
			<table class="table table-bordered">
				<colgroup>
					<col width="10%">
					<col width="77%">
				</colgroup>
				<tbody>
					<tr>
						<th class="text-center align-middle">객실정보</th>
						<td>
							<div class="row mb-3">
								<div class="col-sm-1 pt-2">객실명</div>
								<div class="col-sm-5">
									<input class="form-control" type="text" name="roomName" placeholder="객실명을 입력하세요." value="">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-1 pt-2">객실유형</div>
								<div class="col-sm-5">
									<select name="roomType" class="form-select">
	                                    <option value="" selected="selected">객실을 선택해주세요</option>
	                                    <option value="1">도미토리 (혼성)</option>
	                                    <option value="2">도미토리 (여자)</option>
	                                    <option value="3">도미토리 (남자)</option>
	                                    <option value="4">개인실</option>
	                                    <option value="5">독채형 (콘도형)</option>
                                    </select>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-1 pt-2">인원</div>
								<div class="col-1 pt-2">정원</div>
								<div class="col-2">
									<select name="people" class="form-select">
	                                    <option value="2">2 명</option>
	                                    <option value="3">3 명</option>
	                                    <option value="4">4 명</option>
	                                    <option value="5" selected="selected=">5 명</option>
	                                    <option value="6">6 명</option>
	                                    <option value="7">7 명</option>
	                                    <option value="8">8 명</option>
	                                    <option value="9">9 명</option>
	                                    <option value="10">10 명</option>
                                    </select>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th class="text-center align-middle">이미지 정보<br>(최대 15장)</th>
						<td>
							<div class="mb-3">
								<span>
									* 객실의 전반적인 이미지를 업로드 해주시기 바랍니다.<br>
									* 이미지 교체를 원하시면 "변경"을 선택하시고 삭제를 원하시면 우측 "삭제"를 선택하시기 바랍니다.<br>
									* 이미지 장소는 짧게 기입해주시기 바랍니다. 예시) 객실명, 침대, 화장실 등<br>
									* 첫 이미지가 메인 이미지이며 드래그를 통해 순서 변경이 가능합니다.<br>
								</span>
							</div>
							<div>
								<input type="file" class="form-control col-3"></input>
							</div>
						</td>
					</tr>
					<tr>
						<th class="text-center align-middle">객실 소개글</th>
						<td>
							<div class="mt-2">
								<div class="">
									<textarea class="form-control textarea" rows="6" name="houseDetail" placeholder="객실 내 침대 구성과, 전용 욕실 여부 등 객실 소개/구성을 자세히 기재해주세요."></textarea>
								</div>
								<p class="mt-3">
									<button class="btn btn-secondary" type="button" data-bs-toggle="collapse" data-bs-target="#roomIntroduce" aria-expanded="false" aria-controls="roomIntroduce">
									예시 문구 및 화면 보기
									</button>
								</p>
								<div class="collapse" id="roomIntroduce">
									<div class="card">
										<span class="">
		                                    도미토리<br>
		                                    이층침대 2개 혹은 온돌방으로 개인침구세트 4개 제공<br>
		                                    개인 콘센트, 캐비닛, 전등 구비<br><br>
		                                    개인실<br>
		                                    더블침대 1개+인원에 맞는 침구세트 추가제공<br><br>
		                                    독채<br>
		                                    방 2개, 거실, 화장실, 부엌,베란다<br>
		                                    취사 전자제품(냉장고,전자레인지,인덕션,밭솥 등)과 식기류 및 기본 양념도 구비되어 있습니다.
		                                    <br><br>
	                                    </span>
									</div>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th class="text-center align-middle">편의시설<br>서비스 안내</th>
						<td>
							<div class="mt-2">
								<div class="">
									<textarea class="form-control" rows="6" name="fixtures" placeholder="도미토리 :  객실 내 침대 구성 및 구비 물품 등을 자세히 기재해 주세요.
개인실 : 객실 내 전용 욕실 여부 및 침대 구성과 구비 물품 등을 자세히 기재해 주세요.
독채 : 객실 구조 및 침대 구성, 취사 구비 물품 등을 자세히 기재해 주세요."></textarea>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th class="text-center align-middle">요금설정<br>
							<a class="btn btn-secondary btn-sm" type="button" href="" target="blank">준/성수기<br>기간 설정></a>
						</th>
						<td class="">
							<div class="pb-2 mb-2">
								<span class="fs-6 col-12">* 해당 페이지의 요금 설정은 객실별 기준가격 입니다. 객실별 판매 금액은 '예약관리 > 실시간 예약 관리' 에서 수정하셔야 합니다.</span>
							</div>
							<div class="row">
								<span class="col-sm-3"><strong>기본(비수기)</strong><br>
									<p>
									*준 성수기, 성수기<br>제외한 모든 날짜
									</p>
								</span>
								<div class="col-7 border">
		                            <div class="ms-2 mt-4 me-2 mb-2">
			                            <label class="me-2"><input type="checkbox" class="" checked="checked">일</label>
			                            <label class="me-2"><input type="checkbox" class="" checked="checked">월</label>
			                            <label class="me-2"><input type="checkbox" class="" checked="checked">화</label>
			                            <label class="me-2"><input type="checkbox" class="" checked="checked">수</label>
			                            <label class="me-2"><input type="checkbox" class="" checked="checked">목</label>
			                            <label class="me-2"><input type="checkbox" class="">금</label>
			                            <label class="me-2"><input type="checkbox" class="">토</label>
			                            <label class="me-2"><input type="checkbox" class="">공휴일</label>
			                            <label class="me-2"><input type="checkbox" class="">공휴일 전날</label>
		                            </div>
		                            <div class="">
			                            <label class="ms-2 mt-2 me-2 mb-2" style="margin-right:10px">
			                            정상가 : <input class="form-control" type="text" style="width:90px">원
			                            </label>
		                            </div>
	                            </div>
	                         </div>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
				
</div>
</body>
</html>