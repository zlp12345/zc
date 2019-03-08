package com.zy.projectstype.service.impl;

import com.zy.projectstype.dao.ProjectstypeDao;
import com.zy.projectstype.service.ProjectstypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProjectstypeServiceImpl implements ProjectstypeService{
   @Autowired
    private ProjectstypeDao dao;
}
