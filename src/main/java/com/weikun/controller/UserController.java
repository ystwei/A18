package com.weikun.controller;

import com.weikun.vo.User;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.util.Map;

/**
 * Created by Administrator on 2016/11/19.
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @RequestMapping("/regmain")
    public String regmain(Map map){

        User user=new User();
        map.put("user",user);

        return "register";
    }
    @RequestMapping("/reg")
    public String reg(
            @Valid User user, BindingResult result,Map map){

        if(result.hasErrors()){
            return "register";
        }
        System.out.print("success");
        return "success";
    }
}
