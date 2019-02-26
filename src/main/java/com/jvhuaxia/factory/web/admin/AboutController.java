package com.jvhuaxia.factory.web.admin;

import com.jvhuaxia.factory.pojo.About;
import com.jvhuaxia.factory.service.AboutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin/about")
public class AboutController {
    @Autowired
    AboutService aboutService;

    @RequestMapping("/update")
    public ModelAndView update() {
        ModelAndView modelAndView = new ModelAndView("admin/about/setAbout");
        About about = aboutService.get();
        modelAndView.addObject("about", about);
        return modelAndView;
    }
}
