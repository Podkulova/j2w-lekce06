package cz.czechitas.java2webapps.lekce6.controller.cokolada;

import cz.czechitas.java2webapps.lekce6.controller.alkohol.AlkoholForm;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Random;

/**
 *
 */
@Controller
@RequestMapping("/cokolada")
public class CokoladaController {

    private final Random random = new Random();

    @GetMapping("")
    public Object index() {
        ModelAndView modelAndView = new ModelAndView("/cokolada/formular");
        modelAndView.addObject("form", new CokoladaForm());
        return modelAndView;
    }

    @PostMapping("")
    public Object form(@Valid @ModelAttribute("form") CokoladaForm form, BindingResult bindingResult) {


        if (bindingResult.hasErrors()) {
            return "/cokolada/formular";
        }

        return new ModelAndView("/alkohol/objednano")
                .addObject("kod", Math.abs(random.nextInt()))
                .addObject("email", form.getEmail());
    }


}
