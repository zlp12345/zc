package com.zy.projects.service;

import com.zy.projects.pojo.Projects;

import java.util.List;

public interface ProjectsService {
    List<Projects> getPro(Projects project);


    Projects getByPsId(Integer ps_id);
}
