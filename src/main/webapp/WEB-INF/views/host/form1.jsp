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
	<!-- 호스트 필수 정보 입력폼 -->
	<div class="list">
		<ul>
	        <li>[소개 작성] 은 게스트하우스 전체를 소개하는 기능입니다. (사진, 이벤트 정보, 오시는 길 등)</li>
	        <li>우측 물음표를 클릭하시면 앱에서 어떻게 표시되는지 확인이 가능합니다.</li>
        </ul>
        <form>
			<h3>[필수 기입 정보]</h3>
			<table class="table table-bordered">
				<colgroup>
					<col width="10%" class="bg-secondary p-2 text-white bg-opacity-25">
					<col width="77%">
					<col width="3%">
				</colgroup>
				<tbody>
					<tr>
						<th class="text-center align-middle">
							게스트 하우스
							<br>
							기본 정보
						</th>
						<td>
							<div class="row mb-3">
								<div class="col-sm-1">업체명</div>
								<div class="col-sm-5">
									<input class="form-control" type="text" name="aname" placeholder="업체명을 입력하세요." value="">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-1">업체주소</div>
								<span class="col-sm-5">
									<input class="form-control" id="inputRoadAddress" type="text" name="address1" readonly placeholder="업체 주소를 입력하세요." value="">
								</span>
								<button type="button" class="btn btn-danger col-1">주소검색</button>
							</div>
							<div class="">
								<div class="">
									<input class="form-control" type="text" name="address2" placeholder="나머지 주소를 입력하세요." value="">
								</div>
							</div>
						</td>
						<td style="border-left-style: hidden;"  class="align-middle">
							<button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="left" title="">
							  ?
							</button>
						</td>
					</tr>
					<!-- 업체 이미지 등록 -->
					<tr>
						<th class="text-center align-middle">
							업체 이미지
							<br>
							(최대 20장)
						</th>
						<td class="">
							<div class="">
								<p class="fs-6">* 객실 및 업체 전경, 로비, 주차장 등 업체의 전반적인 이미지를 업로드해주시기 바랍니다.</p>
								<p class="fs-6">* 이미지 교체를 원하시면 "변경"을 선택하시고 삭제를 원하시면 우측 "삭제"를 선택하시기 바랍니다.</p>
								<p class="fs-6">* 이미지 장소는 짧게 기입해주시기 바랍니다. 예시) 전경, 로비, 주차장 등</p>
								<p class="fs-6">* 첫 이미지가 메인 이미지이며 드래그를 통해 순서 변경이 가능합니다.</p>
							</div>
							<div>
								<button type="file" class="btn btn-danger" name="housePictures">이미지 추가</button>
							</div>
						</td>
						<td style="border-left-style: hidden;"  class="align-middle">
							<button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="left" title="TooltipOnLeft">
							  ?
							</button>
						</td>
					</tr>
					<!-- 주변 정보  -->
					<tr>
						<th class="text-center align-middle">
							편의시설
							<br>
							서비스 안내
						</th>
						<td>
							<div class="row mb-3">
								<div class="col-sm-auto">
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck1">
										<label class="" for="gridCheck1">주방/식당</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck2">
										<label class="" for="gridCheck2">엘리베이터</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck3">
										<label class="" for="gridCheck3">에어컨</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck4">
										<label class="" for="gridCheck4">드라이기</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck5">
										<label class="" for="gridCheck5">반려견동반</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck6">
										<label class="" for="gridCheck6">프린터사용</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck7">
										<label class="" for="gridCheck7">카페</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck8">
										<label class="" for="gridCheck8">카드결제</label>
									</div>
								</div>
								<div class="col-sm-auto">
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck9">
										<label class="" for="gridCheck9">세탁기</label>
									</div>
									<div class="form-check">
										<input class="form-check-input"name="facilities" type="checkbox" id="gridCheck10">
										<label class="" for="gridCheck10">주차장</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck11">
										<label class="" for="gridCheck11">냉장고</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck12">
										<label class="" for="gridCheck12">다리미</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck13">
										<label class="" for="gridCheck13">짐보관가능</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck14">
										<label class="" for="gridCheck14">무료주차</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck15">
										<label class="" for="gridCheck15">전자레인지</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck16">
										<label class="" for="gridCheck16">TV</label>
									</div>
								</div>
								<div class="col-sm-auto">
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck25">
										<label class="" for="gridChec25">건조기</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck26">
										<label class="" for="gridCheck26">와이파이</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck27">
										<label class="" for="gridCheck27">객실샤워실</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck28">
										<label class="" for="gridCheck28">조식포함</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck29">
										<label class="" for="gridCheck29">공용PC</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck30">
										<label class="" for="gridCheck30">BBQ</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck31">
										<label class="" for="gridCheck31">취사가능</label>
									</div>
								</div>
								<div class="col-sm-auto">
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck32">
										<label class="" for="gridChec32">탈수기</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck33">
										<label class="" for="gridCheck33">용실용품</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck34">
										<label class="" for="gridCheck34">욕조</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck35">
										<label class="" for="gridCheck35">객실내흡연</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck36">
										<label class="" for="gridCheck36">개인사물함</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck37">
										<label class="" for="gridCheck37">라운지</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" name="facilities" type="checkbox" id="gridCheck38">
										<label class="" for="gridCheck38">개인콘센트</label>
									</div>
								</div>
							</div>
						</td>
						<td style="border-left-style: hidden;"  class="align-middle">
							<button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="left" title="TooltipOnLeft">
							  ?
							</button>
						</td>
					</tr>
					<!-- 주인장 소개글  -->
					<tr>
						<th class="text-center align-middle">
							주인장 소개글
							<br>
							(호스트 소개)
						</th>
						<td>
							<div class="form-check">
								<input class="form-check-input" name="open" type="checkbox" id="hostName">
								<label class="pb-3" for="hostName">업주 실명 및 업주 사진 노출</label>
							</div>
							<div class="row mb-3">
								<div class="col-sm-1 pt-2">업주 실명</div>
								<div class="col-sm-5">
									<input class="form-control" type="text" name="hostName" placeholder="실명을 입력하세요." value="">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-1">업주 사진</div>
								<button type="file" name="hostPicture" class="btn btn-danger col-2 ms-2">이미지 추가</button>
							</div>
							<div class="row mb-3">
								<div style="color: black;" class="col-sm-auto">사진 등록 예시</div>
								<div class="col-auto">
									<span style="color: red;">· 한 개의 이미지만 업로드 할 수 있습니다.</span>
									<br>
									<span style="color: red;">· 사진 권장사이즈 : 300 * 300</span>
								</div>
								<img class="col-2" alt="이미지" src="">
							</div>
							<div class="">
		                    	<textarea class="form-control textarea-layer" rows="6" name="comment" placeholder="사장님의 특이 경력 혹은 사장님만의 재밌는 이야기가 있다면 게스트들에 소개해주세요. 게스트는 숙소의 시설과 위치, 서비스는 물론, 사장님이 어떤 분인지도 관심이 있답니다."></textarea>
		                     	<span id="remainComment" class="float-right">(<span id="count">0</span>/<span id="max">1000</span>)</span>
		                    </div>
		                   <p class="mt-3">
								<button class="btn btn-secondary" type="button" data-bs-toggle="collapse" data-bs-target="#exampleHost" aria-expanded="false" aria-controls="exampleHost">
								예시 문구 및 화면 보기
								</button>
							</p>
					  		<div class="collapse" id="exampleHost">
								<div class="card card-body">
									<span class="">
		                                 전 세계 50여개국 배낭여행 경험을 바탕으로 여행을 사랑하는 여행객들에게 필요한 서비스와 편안한 휴식을 제공하자는 모토로 게스트하우스를 운영하고 있는 홍길동 주인장입니다.
		                                 <br><br>
		                                 세계 일주를 해보았지만 그래도 최고라고 여기는 도시는 서울인데요 서울의 맛과 멋을 함께 즐길 수 있도록 여행쟁이 주인장이 최선을 다해 도와드리겠습니다.
		                                 <br><br>
		                            </span>
								</div>
							</div>
						</td>
						<td style="border-left-style: hidden;"></td>
					</tr>
					<!-- 오시는 길  -->
					<tr>
						<th class="text-center align-middle">
							오시는 길
						</th>
						<td>
							<div class="form">
		                    	<textarea class="form-control textarea" rows="6" name="findWay" placeholder="주요 버스터미널이나 기차역 혹은 공항 등에서 숙소까지 찾아가는 방법을 자세히 기재해 주세요."></textarea>
		                    	<span id="trafficInfo" class="float-right">(<span id="count">0</span>/<span id="max">1000</span>)</span>
		                    </div>
					  		<p class="mt-3">
								<button class="btn btn-secondary" type="button" data-bs-toggle="collapse" data-bs-target="#exampleWay" aria-expanded="false" aria-controls="exampleWay">
								예시 문구 및 화면 보기
								</button>
							</p>
					  		<div class="collapse" id="exampleWay">
								<div class="card card-body">
									<span class="">
				                        [인천공항에서 오시는 방법]<br>
				                        공항리무진 6015번 버스를 승차하신후, '명동역/세종호텔' 정류장에서 하차하세요.<br>
				                        세종호텔 맞은편 횡단보도를 건넌 후 '세븐일레븐' 쪽으로 오세요.<br>
				                        '세븐일레븐' 앞 명동역 3번출구 오른쪽으로 300m 직진하시면 파란대문의 '게스트하우스' 팻말이 보입니다
				                        <br><br>
				                        [김포공항에서 오시는 방법]<br>
				                        공항리무진 6001번 버스를 승차하신 후, '명동역/세종호텔' 정류장에서 하차하세요.
				                        <br><br>
				                        [4호선 명동역에서 오시는 방법]<br>
				                        4호선 명동역 3번 출구로 나오세요<br>
				                        출구 오른쪽으로 300m 직진하시면 파란대문의 '게스트하우스' 팻말이 보입니다.
				                        <br><br>
		                            </span>
								</div>
							</div>
						</td>
						<td style="border-left-style: hidden;" class="align-middle">
							<button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="left" title="TooltipOnLeft">
							  ?
							</button>
						</td>
					</tr>
					<!-- 주변 정보  -->
					<tr>
						<th class="text-center align-middle">
							주변정보
						</th>
						<td>
							<div>
								<span class="text-black-50">
								* 숙소 주변의 명소(교통, 관광, 쇼핑 등 )와 이동수단, 게스트하우스로부터 소요시간을 기입해주세요.<br>
								* [명소 / 이동수단 / 소요시간] 순으로 한줄만 입력이 가능하며 최대 3개까지 작성 가능합니다.<br>
								* 예시) 가산디지털단지역 도보 5분<br>
								* 예시) 팔당댐 차량 10분
								</span>
							</div>
							<div class="form-layer mt-2">
								<div class="form-body col-10">
									<input type="text" class="form-control mt-2" name="trafficInfo" placeholder="숙소 주변의 명소를 홍보하여 주세요. 교통, 관광, 쇼핑 명소부터 게스트하우스까지의 소요시간을 예시 문구를 참고하여 작성해 주시면 게스트들이 예약할 때 큰 도움이 됩니다." value="">
									<input type="text" class="form-control mt-2" name="trafficInfo" placeholder="숙소 주변의 명소를 홍보하여 주세요. 교통, 관광, 쇼핑 명소부터 게스트하우스까지의 소요시간을 예시 문구를 참고하여 작성해 주시면 게스트들이 예약할 때 큰 도움이 됩니다." value="">
									<input type="text" class="form-control mt-2" name="trafficInfo" placeholder="숙소 주변의 명소를 홍보하여 주세요. 교통, 관광, 쇼핑 명소부터 게스트하우스까지의 소요시간을 예시 문구를 참고하여 작성해 주시면 게스트들이 예약할 때 큰 도움이 됩니다." value="">
								</div>
							</div>
							<p class="mt-3">
								<button class="btn btn-secondary" type="button" data-bs-toggle="collapse" data-bs-target="#exampleAround" aria-expanded="false" aria-controls="exampleAround">
								예시 문구 및 화면 보기
								</button>
							</p>
					  		<div class="collapse" id="exampleAround">
								<div class="card card-body">
									<span class="">
		                                명동 도보 5분
				                        <br>
				                        application/host/views/pages/guest/intro.php
		                                남산공원 버스 15분
				                        <br>
		                                청계천 지하철 10분
		                            </span>
								</div>
							</div>
						</td>
						<td style="border-left-style: hidden;"></td>
					</tr>
					<!-- 필수 이용 규칙 -->
					<tr>
						<th class="text-center align-middle">
							숙소 이용 규칙
						</th>
						<td>
							<div class="form-layer mt-2">
								<div class="form-body">
									<textarea class="form-control textarea" rows="6" name="houseDetail" placeholder="숙소 내 이용규칙이 있을 경우 기재해주세요."></textarea>
								</div>
							</div>
						</td>
						<td style="border-left-style: hidden;"></td>
					</tr>
				</tbody>
			</table>
			
			<!-- 호스트 선택 정보 입력폼 -->
			<!-- 호스트 선택 정보 입력폼 -->
			<h3>[선택 기입 정보]
				<span class="fs-6">- 내용이 없으면 작성하지 않으셔도 되지만, 보다 많은 정보를 제공하여 매출 증대에 도움이 될수 있는 메뉴입니다.</span>
			</h3>
			<table class="table table-bordered">
				<colgroup>
					<col width="10%" class="bg-secondary p-2 text-white bg-opacity-25">
					<col width="77%">
					<col width="3%">
				</colgroup>
				<tbody>
					<!-- 한줄평 -->
					<tr>
						<th class="text-center align-middle">한줄평</th>
						<td>
							<div class="">
		                        <input type="text" class="form-control" name="summary" maxlength="32" placeholder="숙소의 장점을 부각시켜 게스트에게 어필할 수 있는 한 줄을 기재해주세요. [32자 내외]" value="">
		                    </div>
						</td>
						<td style="border-left-style: hidden;"  class="align-middle">
							<button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="left" title="TooltipOnLeft">
							  ?
							</button>
						</td>
						
					</tr>
					<!-- 이벤트 정보 -->
					<tr>
						<th class="text-center align-middle">이벤트 정보</th>
						<td>
							<div class="">
		                        <input type="text" class="form-control" name="eventTitle" placeholder="업체 이미지에 표시되는 대표적인 이벤트 한줄을 남겨주세요." value="">
		                        <br>
		                        <textarea class="form-control textarea" rows="6" id="event" name="eventContent" placeholder="게스트하우스 주관의 이벤트 정보를 기재해주세요."></textarea>
		                    </div>
		                    <p class="mt-3">
								<button class="btn btn-secondary" type="button" data-bs-toggle="collapse" data-bs-target="exampleEvent" aria-expanded="false" aria-controls="exampleEvent">
								예시 문구 및 화면 보기
								</button>
							</p>
					  		<div class="collapse" id="exampleEvent">
								<div class="card card-body">
									<span class="">
			                            옥상 바베큐 파티 외 2건
			                            <br><br>
		                            </span>
									<span class="">
		                                [옥상 삼겹살 파티]<br>
		                                일시 : 매주 금, 토 / 21:00~<br>
		                                내용 : 1인 10,000원 (삼겹살+무한맥주)
		                                <br><br>
		                                [비누 만들기 체험]<br>
		                                일시 : 매주 월 / 14:00~15:00<br>
		                                내용 : 1인 1,000원 (게스트하우스 로비)
		                                <br><br>
		                                [서울 야경 투어]<br>
		                                일시 : 매주 화, 목 / 오후 20시~22시<br>
		                                내용 : 1인 3,000원 / 3인 이상시 출발 / (게스트하우스 로비)
		                                <br><br>
		                            </span>
								</div>
							</div>
						</td>
						<td style="border-left-style: hidden;"></td>
					</tr>
					<!-- 현장요금 추가정보 -->
					<tr>
						<th class="text-center align-middle">현장 요금<br>추가 정보</th>
						<td>
							<div class="">
								<textarea class="form-control textarea" rows="6" name="addCost" placeholder="숙소에서 제공되는 숙박비 외의 유료 서비스가 있을 경우 가격정보와 함께 항목을 기재해주세요."></textarea>
		                    </div>
		                    <p class="mt-3">
								<button class="btn btn-secondary" type="button" data-bs-toggle="collapse" data-bs-target="exampleAdd" aria-expanded="false" aria-controls="exampleAdd">
								예시 문구 및 화면 보기
								</button>
							</p>
					  		<div class="collapse" id="exampleAdd">
								<span class="">
			                        [키보증금]<br>
			                        50,000원 (퇴실시 체크 후 반환)
			                        <br><br>
			                        [와이파이 에그 렌탈서비스]<br>
			                        1일당 5,000원<br>
			                        현장 결제 및 추가비용 게스트하우스 문의
			                        <br><br>
		                        </span>
							</div>
						</td>
						<td style="border-left-style: hidden;"></td>
					</tr>
					<!-- 주차장 정보 -->
					<tr>
						<th class="text-center align-middle">주차장 정보</th>
						<td>
							<div class="">
								<textarea class="form-control textarea" rows="6" name="parking" placeholder="숙소에서 제공되는 숙박비 외의 유료 서비스가 있을 경우 가격정보와 함께 항목을 기재해주세요."></textarea>
		                    </div>
						</td>
						<td style="border-left-style: hidden;"></td>
					</tr>
					<!-- 확인 및 기타사항 -->
					<tr>
						<th class="text-center align-middle">확인 사항<br>및 기타</th>
						<td>
							<div class="form-layer">
								<textarea class="form-control textarea" rows="6" name="etc" placeholder="기재된 숙소 정보 외에 게스트 숙지 사항을 기재해주세요."></textarea>
		                    </div>
		                    <p class="mt-3">
								<button class="btn btn-secondary" type="button" data-bs-toggle="collapse" data-bs-target="#exampleCheck" aria-expanded="false" aria-controls="exampleCheck">
								예시 문구 및 화면 보기
								</button>
							</p>
					  		<div class="collapse" id="exampleCheck">
								<span class="">
			                        3박이상 숙박시 20% 할인<br>
			                        시즌별 객실 가격 상이하오니 확인바랍니다.<br>
			                        위의 정보는 게스트하우스 사정에 따라 변경될 수 있습니다.<br>
			                        해당 이미지는 실제와 상이 할 수 있습니다.<br>
			                        예약 확정 이후의 취소는 취소환불규정에 의거하여 적용됩니다.
			                        <br><br>
		                        </span>
							</div>
						</td>
						<td style="border-left-style: hidden;"></td>
					</tr>
				</tbody>
		</table>
		<div class="position-absolute start-50 pb-5">
			<button class="btn btn-danger btn-submit btn-lg" name="submit" type="submit">저장하기</button>
		</div>
	</form>
	</div>
</div>
<script type="text/javascript">
$(document).ready(function(){
	$('[data-toggle="tooltip"]').tooltip();   
});
</script>
</body>
</html>