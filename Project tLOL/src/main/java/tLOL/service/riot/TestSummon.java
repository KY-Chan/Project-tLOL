package tLOL.service.riot;

import java.awt.Color;
import java.awt.Image;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;

import javax.imageio.IIOException;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JOptionPane;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import tLOL.service.CommandProcess;

public class TestSummon implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		TestInfo sInfo = new TestInfo();
		try {
			String summonerNick = request.getParameter("summonerNick");
			summonerNick = summonerNick.replace(" ", "");
			String apiURL = BaseURL.SEARCH_SUMMONER + summonerNick + "?api_key=" + BaseURL.API_KEY;

			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			con.setRequestProperty("Accept", "application/json;charset=utf-8");
			int responseCode = con.getResponseCode();
			BufferedReader br;
			if (responseCode == 200) {
				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			} else {
				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
			}
			String inputLine;
			StringBuffer responseRiot = new StringBuffer();
			while ((inputLine = br.readLine()) != null) {
				responseRiot.append(inputLine);
			}
			br.close();
			System.out.println(responseRiot.toString());

			JSONParser parse = new JSONParser();
			JSONObject jsonObj = (JSONObject) parse.parse(responseRiot.toString());

			sInfo.setId(jsonObj.get("id").toString());
			sInfo.setAccountId(jsonObj.get("accountId").toString());
			sInfo.setPuuid(jsonObj.get("puuid").toString());
			sInfo.setSummonerName(jsonObj.get("name").toString());
			sInfo.setProfileIconId(Integer.parseInt(jsonObj.get("profileIconId").toString()));
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			sInfo.setRevisionDate(sdf.format((Long) jsonObj.get("revisionDate")));
			sInfo.setSumonerLevel((Long) jsonObj.get("summonerLevel"));
			
			//profileIconURL = new URL(BaseURL.PROFILE_ICON + sInfo.getProfileIconId() + ".png");
			//profileImage = ImageIO.read(profileIconURL);
			//resizeProfileImg = profileImage.getScaledInstance(75, 75, Image.SCALE_SMOOTH);

			//lblSummonerNick.setText(sInfo.getSummonerName());
			//lblSummonerIcon.setIcon(new ImageIcon(resizeProfileImg));
			//lblSummonerIcon.setBorder(BorderFactory.createLineBorder(Color.black, 1));
			//lblSummonerLevel.setText("레벨 : " + sInfo.getSumonerLevel());

			//lblSummonerTimeStamp.setText(sdf.format(sInfo.getRevisionDate()));
		} catch (NullPointerException e) {
			JOptionPane.showMessageDialog(null, "존재하지 않는 소환사입니다.", "GG", JOptionPane.WARNING_MESSAGE);
		} catch (IIOException e) {
			//lblSummonerIcon.setIcon(null);
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("sInfo", sInfo);
		return "searchResult";
	}

}
