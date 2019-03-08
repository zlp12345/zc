package com.zy.projects.controller;

import com.zy.projects.pojo.Projects;
import com.zy.projects.service.ProjectsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ProjectsController {

    @Autowired
    private ProjectsService service;

    @RequestMapping("/toProject")
    public String toIndex(){
        return "project/project";
    }

    //project/getPro.do
    @RequestMapping("/project/getPro.do")
    @ResponseBody
    public Map<String,Object> getPro(Projects project,Integer page,Integer limit){
        System.out.println("eeeee");
        System.out.println(page+0+"unll");
        System.out.println(limit);
        System.out.println(project.getPs_name());
        List<Projects> list = service.getPro(project);
        Map<String,Object> map = new HashMap<>();

        map.put("code",0);
        map.put("msg","项目数据");
        map.put("count",list.size());
        map.put("data",list.subList((page-1)*limit>list.size()?0:(page-1)*limit,limit*page>list.size()?list.size():limit*page));
        //(page-1)*rows>list.size()?0:(page-1)*rows    截取list开始的位置     使用三目运算符判断开始的位置如果大于返回的数据总条数的话  设置成0
        // rows*page > list.size()?list.size():rows*page)  结束的位置  使用三目运算符判断结束的位置如果大于返回数据的总条数的话  吧总条数作为结束的位置
//        map.put("rows", list.subList((page-1)*rows>list.size()?0:(page-1)*rows , rows*page > list.size()?list.size():rows*page));
        return map;
    }

//    //project/getByPsId
    @RequestMapping("/project/getByPsId")
    @ResponseBody
    public Map<String,Object> getByPsId(Integer ps_id){
        System.out.println(ps_id);
        System.out.println("eeeee3242");
        Map<String,Object> map = new HashMap<>();
        Projects projects;

        try{
            projects = service.getByPsId(ps_id);
            map.put("success",true);
            map.put("data2",projects);
        }catch (Exception e){
            e.printStackTrace();
            map.put("success",false);
        }
        return map;
    }
}
