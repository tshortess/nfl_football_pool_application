package com.example.nfl_app.dao;

import com.example.nfl_app.model.Pick;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcUserPickDao implements UserPickDao {
    private JdbcTemplate jdbcTemplate;

    public JdbcUserPickDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public boolean createPicks(List<Pick> picks) {
        boolean isPickCreationSuccessful = false;


        return isPickCreationSuccessful;
    }

    @Override
    public List<Pick> getPicks(int userId, int week, int year, int poolNum) {
        List<Pick> listOfPicks = new ArrayList<Pick>();
        String sql = "SELECT ";

        return listOfPicks;
    }

    private Pick mapRowToPick(SqlRowSet results) {
        Pick pick = new Pick();
        pick.setGameId(results.getInt("game_id"));
        pick.setPickId(results.getInt("pick_id"));
        pick.setUserId(results.getInt("user_id"));
        return pick;
    }

}
