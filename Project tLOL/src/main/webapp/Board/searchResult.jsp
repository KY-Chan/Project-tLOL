<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
    <link rel="favicon" type="image/x-icon" href="/Project_tLOL/images/tlol_logo.ico">
    <link rel="apple-touch-icon" sizes="192x192" href="/Project_tLOL/images/tlol_logo.png">
   
    <link rel="stylesheet" href="/Project_tLOL/bootstrap/css/style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
<div class="col-10 bd-content">
        <section class="result-container">
            <div class="profile">
               <ul class="clearfix">
                   <li>
                       <img src="/Project_tLOL/images/profile.png" alt="플레이어 아이콘" />
                   </li>
                   <li>
                       <p class="user-nm">천둥번개망치</p>
                       <p class="update-btn">
                           <button>UPDATE</button>
                       </p>
                       <p class="system-date">06/15</p>
                   </li>
                   <li>
                        <img src="/Project_tLOL/images/tier/platinum.png" class="rank-img" alt="티어 아이콘" />
                        <p class="rank-info">
                            <span>솔로랭크</span>
                            <span class="rank-nm">Platinum 3</span>
                            <span>47.7% 14LP</span>
                            <span class="rank-total"> 
                                <span>62W</span>
                                <span>68L</span>
                            </span>
                        </p>
                   </li>
               </ul>
            </div>
            <ul class="clearfix">
                <li class="record-box fir">
                    <span>100%</span>
                    <span>승률</span>
                    <span>1W 0L</span>
                </li>
                <li class="record-box sec">
                    <ul class="text">
                        <li>솔랭</li>
                        <li>06/15</li>
                        <li class="win">승리</li> <!-- 승리 : win / 패배 : lose -->
                        <li>29분</li>
                    </ul>
                    <ul class="clearfix add-magic">
                        <li>
                            <img src="/Project_tLOL/images/spell/ignite.png" alt="스펠 이미지" />
                            <img src="/Project_tLOL/images/spell/flash.png" alt="스펠 이미지" />
                            <img src="/Project_tLOL/images/rune/Aftershock.png" alt="룬 이미지" />
                            <img src="/Project_tLOL/images/rune/Inspiration.png" alt="룬 이미지" />
                        </li>
                    </ul>
                    <span class="champion">
                        <img src="/Project_tLOL/images/champions/blitzcrank.png" alt="챔피언 초상화" />
                        <span>LV 14</span>
                    </span>
                    <ul class="clearfix kda">
                        <li>
                            <span>2/8/7</span>
                            <span>KDA</span>
                        </li>
                        <li>
                            <span>208(7.2)</span>
                            <span>CS</span>
                        </li>
                        <li>
                            <span>25%</span>
                            <span>KP</span>
                        </li>
                    </ul>
                    <ul class="team red">
                        <li>
                            <img src="/Project_tLOL/images/champions/blitzcrank.png" alt="챔피언 초상화" />
                            <a href="">레드팀 아이디</a>
                        </li>
                        <li>
                            <img src="/Project_tLOL/images/champions/garen.png" alt="챔피언 초상화" />
                            <a href="">레드팀 아이디</a>
                        </li>
                        <li>
                            <img src="/Project_tLOL/images/champions/galio.png" alt="챔피언 초상화" />
                            <a href="">레드팀 아이디</a>
                        </li>
                        <li>
                            <img src="/Project_tLOL/images/champions/gangplank.png" alt="챔피언 초상화" />
                            <a href="">레드팀 아이디</a>
                        </li>
                        <li>
                            <img src="/Project_tLOL/images/champions/gragas.png" alt="챔피언 초상화" />
                            <a href="">레드팀 아이디</a>
                        </li>
                    </ul>
                    <ul class="team blue">
                        <li>
                            <img src="/Project_tLOL/images/champions/graves.png" alt="챔피언 초상화" />
                            <a href="">블루팀 아이디</a>
                        </li>
                        <li>
                            <img src="/Project_tLOL/images/champions/gnar.png" alt="챔피언 초상화" />
                            <a href="">블루팀 아이디</a>
                        </li>
                        <li>
                            <img src="/Project_tLOL/images/champions/nami.png" alt="챔피언 초상화" />
                            <a href="">블루팀 아이디</a>
                        </li>
                        <li>
                            <img src="/Project_tLOL/images/champions/nasus.png" alt="챔피언 초상화" />
                            <a href="">블루팀 아이디</a>
                        </li>
                        <li>
                            <img src="/Project_tLOL/images/champions/nautilus.png" alt="챔피언 초상화" />
                            <a href="">블루팀 아이디</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </section>
	</div>
</html>