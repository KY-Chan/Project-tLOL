<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<div class="col-10 bg-dark">
	<div class="container-scroller"></div>
	<div class="card mb-1 gg-scrollable-menu">
		<div class="card-body d-flex flex-column">
			<div class="d-flex justify-content-between">
				<div class="d-flex align-items-center">
					<div class="text-center">
						<a
							href="/kr/profile/%EC%B2%9C%EB%91%A5%EB%B2%88%EA%B0%9C%EB%A7%9D%EC%B9%98">
							<img class="rounded-circle"
							src="https://ddragon.leagueoflegends.com/cdn/11.11.1/img/profileicon/4589.png"
							width="90" height="90" alt="소환사 프로필 - 천둥번개망치" />
						</a>
					</div>
					<div class="d-flex flex-column ml-3">
						<a class="gg-important-text text-secondary text-center"
							href="/kr/profile/%EC%B2%9C%EB%91%A5%EB%B2%88%EA%B0%9C%EB%A7%9D%EC%B9%98">
							천둥번개망치 </a>
						<div class="text-center">
							<div class="my-2">
								<a class="btn btn-primary btn-rounded px-4 py-3"
									id="profileUpdateBtn" href="#"
									data-href="/kr/profile/%EC%B2%9C%EB%91%A5%EB%B2%88%EA%B0%9C%EB%A7%9D%EC%B9%98/update"
									data-refresh-href="/kr/profile/%EC%B2%9C%EB%91%A5%EB%B2%88%EA%B0%9C%EB%A7%9D%EC%B9%98"
									role="button"> <i id="profileUpdateRefreshImg"
									class="mdi mdi-sync"></i> 업데이트
								</a>
								<button
									class="btn btn-danger btn-rounded btn-disabled px-4 py-3"
									id="profileUpdateProgressBtn" style="display: none">
									<i class="fa fa-spinner fa-spin fa-1x"></i> 업데이트
								</button>
							</div>
						</div>
						<div class="text-center gg-sub-description">1시간 전</div>
					</div>
				</div>
				<div class="d-flex ml-4 ml-lg-0">
					<div class="d-flex align-items-center ml-3">
						<img class="gg-profile-tier" src="https://your.gg/v4/media/Platinum.png" 
							alt="천둥번개망치 솔로랭크 티어 Platinum 3" />
					</div>
					<div class="d-flex flex-column align-items-start ml-3"
						style="width: 100px">
						<span class="gg-sub-title"> 솔로랭크 </span> <span
							class="text-platinum mt-1"> Platinum 3 </span> <span class="mt-1">
							47.7% 14LP </span> <span> <span class="text-success">62W</span> <span
							class="text-warning">68L</span>
						</span>
					</div>
				</div>
			</div>
		</div>
	</div><!-- 소환사 정보 쪽 -->
		<div class="col-lg-8 col-12">
			<div class="row justify-content-between align-items-center">
				<div class="col-12 col-lg-6">
					<div class="card">
						<div class="card-body py-lg-0">
							<div class="d-flex profile-match-summary">
								<div class="d-flex justify-content-between align-items-center w-100">
									<div class="d-flex flex-column w-25">
										<div class="d-flex justify-content-center align-items-center gg-important-number">
											<a
												href="/kr/profile/%EC%B2%9C%EB%91%A5%EB%B2%88%EA%B0%9C%EB%A7%9D%EC%B9%98/feedback?l=&mc=&c=53"
												data-event="move_to_feedback ggx-stats"
												class="text-positive"> 100% </a><!-- 링크 필요없음 지우셈 -->
										</div> <!-- 승률 쪽  -->
										<div class="d-flex flex-column align-items-center gg-sub-description mt-3">
											<span class="gg-important-sub-description">

													승률
												
											</span>
											<span class="gg-sub-description">1W 0L</span>
										</div><!-- 승률 글자 바로 아래 승패  -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div><!-- 최근 승률 감싸는 곳 -->
				<div class="col-12 col-lg-6 mt-lg-0 mt-1">
					<div class="card">
						<div class="card-body py-lg-0">
							<div class="row justify-content-center align-items-center profile-match-summary">
								<div class="col-9 h-100">
									<div class="d-flex flex-column justify-content-center h-100">
										<div class="d-flex align-items-center justify-content-between my-1">
											<span class="text-center"> <img
												src="https://ddragon.leagueoflegends.com/cdn/11.11.1/img/champion/Blitzcrank.png"
												class="gg-img-25x25 rounded-circle" alt="천둥번개망치 모스트1 블리츠크랭크">
											</span> 
											<span style="width: 39px" class="text-center ml-2 text-positive">100%</span> 
											<span class="ml-2 text-center" style="width: 63px">1W 0L</span>
										</div>
									</div>
								</div>
								<div class="col-3 d-flex flex-column justify-content-end">
									<div class="d-flex flex-column justify-content-center align-items-center">
										<div>
											<img src="/v4/media/tran-Sup.svg" class="gg-img-20x20"
												alt="천둥번개망치 모스트 라인 서폿"><!-- 라인(탑 미드 서폿 등) 이미지 링크 걸기  -->
										</div>
										<div class="text-small mt-1">100%</div>
									</div>
									<div class="d-flex flex-column justify-content-center align-items-center mt-2">
										<div class="gg-text-bold">솔랭</div>
										<div class="text-small">100%</div> 
									</div>
								</div>
							</div>
						</div>
					</div>
				</div> <!-- 최근 전적 요약 창 -->
			<div class="d-flex flex-column mt-3">
				<div class="card gg-matchlist py-3 px-1 px-lg-3 "
					data-href="/kr/profile/%EC%B2%9C%EB%91%A5%EB%B2%88%EA%B0%9C%EB%A7%9D%EC%B9%98/match/5143914320">
					<div class="d-flex flex-column w-100">
						<div class="d-flex justify-content-between align-items-center">
							<div class="d-flex flex-column justify-content-between align-items-center" style="min-width: 55px">
								<div>솔랭</div>
								<div class="gg-sub-description text-truncate"
									data-date="2021/04/21 12:49">04/21</div> <!-- 드디어 전적 -->
								<div class="text-w mt-1">승리</div>
								<div class="gg-sub-description">30분</div>
							</div>
							<div class="d-flex flex-column justify-content-between w-100 mx-lg-3 ml-1 ml-lg-0">
								<div class="d-flex justify-content-between">
									<div class="d-flex">
										<div class="d-flex flex-column justify-content-around">
											<img class="img-spell-rune rounded"
												src="https://ddragon.leagueoflegends.com/cdn/11.11.1/img/spell/SummonerFlash.png"
												data-tippy-content="<tooltipTitle>점멸</tooltipTitle><br><br>커서 방향으로 챔피언이 짧은 거리를 순간이동합니다."
												alt="블리츠크랭크 주문(스펠, Spell) 점멸"> <img
												class="img-spell-rune rounded"
												src="https://ddragon.leagueoflegends.com/cdn/11.11.1/img/spell/SummonerDot.png"
												data-tippy-content="<tooltipTitle>점화</tooltipTitle><br><br>적 챔피언을 불태워 5초 동안 70~410의 고정 피해(챔피언 레벨에 따라 변동)를 입히고 모습을 드러내며 치료 효과를 감소시킵니다."
												alt="블리츠크랭크 주문(스펠, Spell) 점화">
										</div>
										<div class="d-flex flex-column justify-content-around">
											<img class="img-spell-rune"
												src="https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Resolve/VeteranAftershock/VeteranAftershock.png"
												data-tippy-content="<tooltipTitle>여진</tooltipTitle><br><br>적을 이동 불가 상태로 만들면 2.5초 동안 35+추가 방어력 및 마법 저항력의 80%만큼 방어력과 마법 저항력이 증가하며 폭발이 일어나 근처 적에게 마법 피해를 줍니다.<br><br>피해량: 25~120 (+추가 체력의 8%)<br>재사용 대기시간: 20초<br><br>여진 추가 저항력: 80~150 (레벨에 비례)<br>"
												alt="블리츠크랭크 룬(Rune) 여진"> <img class="img-spell-rune"
												src="https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/7203_Whimsy.png"
												data-tippy-content="<tooltipTitle>영감</tooltipTitle><br><br><tooltipTitle>마법공학 점멸기</tooltipTitle><br>점멸이 재사용 대기 중일 때 <i>마법공학 점멸</i>로 대체됨<br><br><i>마법공학 점멸</i>: 정신 집중 후 다른 지점으로 순간 이동<br><br><tooltipTitle>우주적 통찰력</tooltipTitle><br><lol-uikit-tooltipped-keyword key='LinkTooltip_Description_CDR'>재사용 대기시간 감소</lol-uikit-tooltipped-keyword> +5%<br>최대 재사용 대기시간 감소 +5%<br>소환사 주문 재사용 대기시간 감소 +5%<br>아이템 재사용 대기시간 감소 +5%"
												alt="블리츠크랭크 룬(Rune) 영감">
										</div>
									</div>
									<div class="d-flex align-items-center">
										<div class="d-flex flex-column align-items-center">
											<div>
												<img class="rounded-circle gg-matchlist-champion"
													src="https://ddragon.leagueoflegends.com/cdn/11.11.1/img/champion/Blitzcrank.png"
													alt="천둥번개망치 블리츠크랭크">
											</div>
											<div
												class="text-small d-flex justify-content-center align-items-center mt-1">
												<img class="gg-img-10x10" src="/v4/media/tran-Sup.svg"
													alt="천둥번개망치 서폿 블리츠크랭크"> <span class="ml-1">LV14</span>
											</div>
										</div>
									</div>
									<div
										class="d-none d-lg-flex flex-column justify-content-between"
										style="width: 85px">
										<div class="d-flex gg-sub-description justify-content-between">
											<div class="d-flex">
												<span class="text-success">3</span> <span class="mx-0">/</span>
												<span class="text-warning">6</span> <span class="mx-0">/</span>
												<span class="text-success">23</span>
											</div>
											<div>KDA</div>
										</div>
										<div class="d-flex gg-sub-description justify-content-between">
											<span class="text-info">29(1.0)</span> <span>CS</span>
										</div>
										<div class="d-flex gg-sub-description justify-content-between">
											<span class="text-info">67%</span> <span>KP</span>
										</div>
									</div><!-- KDA, CS, Kill Percentage -->
								</div>
							</div>
							<div class="d-none d-lg-flex justify-content-end flex-fill">
								<div class="d-flex flex-column justify-content-between text-truncate" style="width: 90px">
									<span class="text-small"> 
										<img class="rounded-circle gg-img-15x15"
										src="https://ddragon.leagueoflegends.com/cdn/11.11.1/img/champion/Camille.png"
										alt="벨베디어 탑 카밀">
										<a class="ml-1 text-w" data-event="move_to_profile matchlist_summoner"
										href="/kr/profile/%EB%B2%A8%EB%B2%A0%EB%94%94%EC%96%B4"
										target="_blank"> 벨베디어 </a></span>
									<span class="text-small">
										<img class="rounded-circle gg-img-15x15"
										src="https://ddragon.leagueoflegends.com/cdn/11.11.1/img/champion/Zac.png"
										alt="넌 무슨 맛이니 정글 자크">
										<a class="ml-1 text-w" data-event="move_to_profile matchlist_summoner"
										href="/kr/profile/%EB%84%8C %EB%AC%B4%EC%8A%A8 %EB%A7%9B%EC%9D%B4%EB%8B%88"
										target="_blank"> 넌 무슨 맛이니 </a></span> 
									<span class="text-small">
										<img class="rounded-circle gg-img-15x15"
										src="https://ddragon.leagueoflegends.com/cdn/11.11.1/img/champion/Vladimir.png"
										alt="그냥재밌게하는거 미드 블라디미르">
										<a class="ml-1 text-w" data-event="move_to_profile matchlist_summoner"
										href="/kr/profile/%EA%B7%B8%EB%83%A5%EC%9E%AC%EB%B0%8C%EA%B2%8C%ED%95%98%EB%8A%94%EA%B1%B0"
										target="_blank"> 그냥재밌게하는거 </a></span>
									<span class="text-small"> 
										<img class="rounded-circle gg-img-15x15"
										src="https://ddragon.leagueoflegends.com/cdn/11.11.1/img/champion/Vayne.png"
										alt="최우너석이 원딜 베인">
										<a class="ml-1 text-w" data-event="move_to_profile matchlist_summoner"
										href="/kr/profile/%EC%B5%9C%EC%9A%B0%EB%84%88%EC%84%9D%EC%9D%B4"
										target="_blank"> 최우너석이 </a></span>
									<span class="text-small">
										<img class="rounded-circle gg-img-15x15"
										src="https://ddragon.leagueoflegends.com/cdn/11.11.1/img/champion/Blitzcrank.png"
										alt="천둥번개망치 서폿 블리츠크랭크">
										<a class="ml-1 text-w" data-event="move_to_profile matchlist_summoner"
										href="/kr/profile/%EC%B2%9C%EB%91%A5%EB%B2%88%EA%B0%9C%EB%A7%9D%EC%B9%98"
										target="_blank"> 천둥번개망치 </a></span>
								</div><!-- 승리자 다섯명 -->
								<div class="d-flex flex-column justify-content-between ml-1 text-truncate" style="width: 90px">
									<span class="text-small">
										<img class="rounded-circle gg-img-15x15"
										src="https://ddragon.leagueoflegends.com/cdn/11.11.1/img/champion/Aatrox.png"
										alt="아 자야하는데 탑 아트록스"> 
										<a class="ml-1 text-f" data-event="move_to_profile matchlist_summoner"
										href="/kr/profile/%EC%95%84 %EC%9E%90%EC%95%BC%ED%95%98%EB%8A%94%EB%8D%B0"
										target="_blank"> 아 자야하는데 </a></span>
									<span class="text-small"> 
										<img class="rounded-circle gg-img-15x15"
										src="https://ddragon.leagueoflegends.com/cdn/11.11.1/img/champion/Nidalee.png"
										alt="GS워너비 정글 니달리"> 
										<a class="ml-1 text-f" data-event="move_to_profile matchlist_summoner"
										href="/kr/profile/GS%EC%9B%8C%EB%84%88%EB%B9%84"
										target="_blank"> GS워너비 </a></span> 
									<span class="text-small"> 
										<img class="rounded-circle gg-img-15x15"
										src="https://ddragon.leagueoflegends.com/cdn/11.11.1/img/champion/Qiyana.png"
										alt="shenyueislove 미드 키아나"> 
										<a class="ml-1 text-f" data-event="move_to_profile matchlist_summoner"
										href="/kr/profile/shenyueislove" target="_blank"> shenyueislove </a></span> 
									<span class="text-small"> 
										<img class="rounded-circle gg-img-15x15"
										src="https://ddragon.leagueoflegends.com/cdn/11.11.1/img/champion/Kaisa.png"
										alt="딴선수 원딜 카이사"> 
										<a class="ml-1 text-f" data-event="move_to_profile matchlist_summoner"
										href="/kr/profile/%EB%94%B4%EC%84%A0%EC%88%98" target="_blank">	딴선수 </a></span> 
									<span class="text-small"> 
										<img class="rounded-circle gg-img-15x15"
										src="https://ddragon.leagueoflegends.com/cdn/11.11.1/img/champion/Alistar.png"
										alt="신혁신 서폿 알리스타"> 
										<a class="ml-1 text-f" data-event="move_to_profile matchlist_summoner"
										href="/kr/profile/%EC%8B%A0%ED%98%81%EC%8B%A0" target="_blank">	신혁신 </a></span>
								</div><!-- 패배자 5명 -->
							</div>
						</div>
					</div>
				</div>
			</div><!-- 게임내용 -->
		</div>
	</div>
</div>
</html>