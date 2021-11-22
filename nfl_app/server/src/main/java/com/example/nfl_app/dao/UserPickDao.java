package com.example.nfl_app.dao;

import com.example.nfl_app.model.Pick;

import java.util.List;

public interface UserPickDao {

    public boolean createPicks(List<Pick> picks);

    public List<Pick> getPicks(int underId, int week, int year, int poolNum);

}
