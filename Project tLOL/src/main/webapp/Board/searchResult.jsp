<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="col-10 bd-content">
<div class="wrap">
	<section class="result-container">
	    <div class="profile">
	       <ul class="clearfix">
	           <li>
	               <img src="${sInfo.profileIconId}" alt="플레이어 아이콘" onerror="this.src='../images/spell/ignite.png'" />
	           </li>
	           <li>
	               <p class="user-nm">${sInfo.summonerName}</p>
	               <p class="update-btn">
	                   <button>UPDATE</button>
	               </p>
	               <p class="system-date">${sInfo.revisionDate}</p>
	           </li>
	           <li>
	                <img src="${sInfo.tierImage}" class="rank-img" alt="티어 아이콘" onerror="this.src='../images/spell/ignite.png'" />
	                <p class="rank-info">
	                    <span>솔로랭크</span>
	                    <span class="rank-nm">${sInfo.tier}</span>
	                    <span>${winRate} ${sInfo.wins}</span>
	                    <span class="rank-total"> 
	                        <span>${sInfo.wins}</span>
	                        <span>${sInfo.losses}</span>
	                    </span>
	                </p>
	           </li>
	       </ul>
	    </div>
	    <ul class="clearfix">
	        <li class="record-box">
	            <ul class="text">
	                <li>솔랭</li>
	                <li>6/15</li>
	                <li class="win">승리</li> <!-- 승리 : win / 패배 : lose -->       
<%--         <c:if test="${sInfo.wins}">  --%>
<!--             <h2>  -->
<!--                 승리 -->
<!--             </h2>            -->
<%--         </c:if> --%>
<%--         <c:if test="${sInfo.losses}">  --%>
<!--             <h2>  -->
<!--                 패배 -->
<!--             </h2>            -->
<%--         </c:if> --%>
	                <li>29분</li>
	            </ul>
	            <ul class="clearfix add-magic">
	                <li>
	                    <img src="../images/spell/ignite.png" alt="스펠 이미지" />
	                    <img src="../images/spell/flash.png" alt="스펠 이미지" />
	                    <img src="../images/rune/Aftershock.png" alt="룬 이미지" />
	                    <img src="../images/rune/Inspiration.png" alt="룬 이미지" />
	                </li>
	            </ul>
	            <span class="champion">
	                <img src="../images/champions/blitzcrank.png" alt="챔피언 초상화" />
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
	                    <img src="../images/champions/blitzcrank.png" alt="챔피언 초상화" />
	                    <a href="">레드팀 아이디</a>
	                </li>
	                <li>
	                    <img src="../images/champions/blitzcrank.png" alt="챔피언 초상화" />
	                    <a href="">레드팀 아이디</a>
	                </li>
	                <li>
	                    <img src="../images/champions/blitzcrank.png" alt="챔피언 초상화" />
	                    <a href="">레드팀 아이디</a>
	                </li>
	                <li>
	                    <img src="../images/champions/blitzcrank.png" alt="챔피언 초상화" />
	                    <a href="">레드팀 아이디</a>
	                </li>
	                <li>
	                    <img src="../images/champions/blitzcrank.png" alt="챔피언 초상화" />
	                    <a href="">레드팀 아이디</a>
	                </li>
	            </ul>
	            <ul class="team blue">
	                <li>
	                    <img src="../images/champions/blitzcrank.png" alt="챔피언 초상화" />
	                    <a href="">블루팀 아이디</a>
	                </li>
	                <li>
	                    <img src="../images/champions/blitzcrank.png" alt="챔피언 초상화" />
	                    <a href="">블루팀 아이디</a>
	                </li>
	                <li>
	                    <img src="../images/champions/blitzcrank.png" alt="챔피언 초상화" />
	                    <a href="">블루팀 아이디</a>
	                </li>
	                <li>
	                    <img src="../images/champions/blitzcrank.png" alt="챔피언 초상화" />
	                    <a href="">블루팀 아이디</a>
	                </li>
	                <li>
	                    <img src="../images/champions/blitzcrank.png" alt="챔피언 초상화" />
	                    <a href="">블루팀 아이디</a>
	                </li>
	            </ul>
	        </li>
	    </ul>
	</section>
</div>
</div>