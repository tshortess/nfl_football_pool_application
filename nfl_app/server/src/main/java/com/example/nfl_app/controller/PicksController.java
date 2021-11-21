package com.example.nfl_app.controller;

import com.example.nfl_app.dao.UserDao;
import com.example.nfl_app.dao.UserPickDao;
import com.example.nfl_app.model.Pick;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import java.security.Principal;
import java.util.List;

@RestController
@PreAuthorize("isAuthenticated()")
public class PicksController {
    private UserPickDao userPickDao;
    private UserDao userDao;

    public PicksController(UserPickDao userPickDao, UserDao userDao) {
        this.userPickDao = userPickDao;
        this.userDao = userDao;
    }

    @RequestMapping(path ="/picks", method = RequestMethod.POST)
    public boolean makePicks(Principal principal, @Valid @RequestBody List<Pick> pick) {
        boolean isPickSuccessful = false;




        return isPickSuccessful;
    }

}
