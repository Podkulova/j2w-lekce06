package cz.czechitas.java2webapps.lekce6.controller.cokolada;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 */
@Controller
@RequestMapping("/cokolada")
public class CokoladaController {
    @GetMapping("")
    public Object index() {
        return "/cokolada/formular";
    }

}
