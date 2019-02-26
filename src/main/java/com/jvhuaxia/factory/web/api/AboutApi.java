package com.jvhuaxia.factory.web.api;

import com.jvhuaxia.factory.dto.Result;
import com.jvhuaxia.factory.pojo.About;
import com.jvhuaxia.factory.service.AboutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDateTime;

@Controller
@RequestMapping("/api/about")
public class AboutApi {
    @Autowired
    AboutService aboutService;

    @RequestMapping("/update")
    public
    @ResponseBody
    Result<String> update(HttpServletRequest httpServletRequest) {
        String title = httpServletRequest.getParameter("title");
        String des = httpServletRequest.getParameter("des");
        About about = new About(1, title, des, LocalDateTime.now());
        aboutService.update(about);
        return new Result<>(true, "修改成功");
    }
}
