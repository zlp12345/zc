package com.zy.projects.dao;

import com.zy.projects.pojo.Projects;

import java.util.List;

public interface ProjectsDao {
    List<Projects> getPro(Projects project);

    Projects getByPsId(Integer ps_id);
}
