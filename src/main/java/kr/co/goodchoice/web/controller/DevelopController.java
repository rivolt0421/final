package kr.co.goodchoice.web.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.co.goodchoice.vo.House;

@RestController
public class DevelopController {
	@Autowired
	private JdbcTemplate template;

	@GetMapping("/develop/updateHouseAddress")
	String update() {

		HttpURLConnection conn;
		URL url;

		String urlStr = "https://dapi.kakao.com/v2/local/search/address.json?query=";
		String apiKey = "KakaoAK 3eb916eb82695a77ceeef152a41f900b";

		String selectSql = "select HOUSE_NO, HOUSE_ADDRESS from house";
		String updateSql = "update HOUSE SET HOUSE_LONGITUDE = ?, HOUSE_LATITUDE = ? where HOUSE_NO = ?";
		List<House> list = template.query(selectSql, (rs,rn) -> {
			House h = new House();
			h.setNo(rs.getInt("HOUSE_NO"));
			h.setAddress(rs.getString("HOUSE_ADDRESS"));
			return h;
		});
		
		StringBuilder result = new StringBuilder();

		try {
			for(House h : list) {
				url = new URL(urlStr + URLEncoder.encode(h.getAddress(), "UTF-8"));
				conn = (HttpURLConnection) url.openConnection();
				conn.setRequestMethod("GET");
				conn.setRequestProperty("Authorization", apiKey);

				Charset charset = Charset.forName("UTF-8");
				BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream(), charset));

				JSONParser jsonParser = new JSONParser();
				JSONObject json = (JSONObject)jsonParser.parse(in);

				JSONArray documents = (JSONArray) json.get("documents");
				if (documents.isEmpty()) {
					System.out.println("empty");
					continue;
				} else {
					JSONObject address = (JSONObject) ((JSONObject) documents.get(0)).get("address");
					h.setLongtitude(Double.parseDouble((String)address.get("x")));
					h.setLatitude(Double.parseDouble((String)address.get("y")));
				}
				System.out.println(h.getNo() + " : " + h.getLongtitude() + " // " + h.getLatitude());
				
				template.update(updateSql, h.getLongtitude(), h.getLatitude(), h.getNo());
				result.append(h.toString()+"<br>");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result.toString();
	}
}
