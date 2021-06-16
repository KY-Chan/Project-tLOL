<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<div class="col-10 bd-content">
	<table class="text-white">
		<tr>
			<th>계정명</th><td>${sInfo.getAccountId() }</td>
		</tr>
		<tr>
			<th>소환사명</th><td>${sInfo.getSummonerName() }</td>
		</tr>
		<tr>
			<th>가입일</th><td>${sInfo.getRevisionDate() }</td>
		</tr>
		<tr>
			<th>소환사레벨</th><td>${sInfo.getSumonerLevel() }</td>
		</tr>
	</table>
	</div>
</html>