package com.example.nfl_app.service;

import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

public class MatchUpService {

    //this class will be responsible for obtaining the data from espn.com and automatically creating match ups with that data
    private static final String API_BASE_URL = "https://www.espn.com/nfl/schedule/_/week/{week}";
    RestTemplate restTemplate = new RestTemplate();

    public String getScoreData(int week) {
        ResponseEntity response = restTemplate.getForEntity(API_BASE_URL, String.class, week);
        return response.toString();
    }

}
