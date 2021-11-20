package com.example.nfl_app.dao;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class JdbcUserPickDao implements UserPickDao {
    private JdbcTemplate jdbcTemplate;

}
