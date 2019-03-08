package com.zy.projects.service.impl;

import com.zy.projects.dao.ProjectsDao;
import com.zy.projects.pojo.Projects;
import com.zy.projects.service.ProjectsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProjectsServiceImpl implements ProjectsService {

    @Autowired
    private ProjectsDao dao;




    @Override
    public List<Projects> getPro(Projects project) {
        System.out.println("eeeee");
        return dao.getPro(project);
    }

    @Override
    public Projects getByPsId(Integer ps_id) {

        return dao.getByPsId(ps_id);
    }
}
