package controller;

import model.Setting;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("setting/")
public class SettingController {
    @GetMapping(value = "showForm")
    public String showForm(ModelMap modelMap) {
        modelMap.addAttribute("setting", new Setting());
        return "setting";
    }

    @PostMapping(value = "/saveSetting")
    public String save(@ModelAttribute("setting") Setting setting, BindingResult result, ModelMap modelMap) {
        modelMap.addAttribute("language", setting.getLanguage());
        modelMap.addAttribute("pageSize", setting.getPageSize());
        modelMap.addAttribute("spamFilter", setting.isSpamFilter());
        modelMap.addAttribute("signature", setting.getSignature());
        return "saved";
    }
}
