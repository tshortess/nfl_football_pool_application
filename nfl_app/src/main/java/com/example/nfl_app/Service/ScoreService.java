package com.example.nfl_app.Service;

import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

public class ScoreService {

    //this class will be responsible for obtaining the data from espn.com and automatically creating scoreboards with that data
    private static final String API_BASE_URL = "https://www.espn.com/nfl/scoreboard/_/week/{week}/year/2021/seasontype/2";
    RestTemplate restTemplate = new RestTemplate();

    public String getScoreData(int week) {
        ResponseEntity response = restTemplate.getForEntity(API_BASE_URL, String.class, week);
        return response.toString();
    }
}
