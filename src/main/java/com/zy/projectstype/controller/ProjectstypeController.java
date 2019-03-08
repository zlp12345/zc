package com.zy.projectstype.controller;

import com.zy.projectstype.service.ProjectstypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class ProjectstypeController {
    @Autowired
    private ProjectstypeService service;
}
