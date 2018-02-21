package com.learningjava.rest.spring.front.controller;

import com.learningjava.rest.spring.core.ReadDB;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * com.learningjava.rest.spring.front
 * Class
 * By berto. 12/02/2018
 */
//anotacion que controla el acceso a las plantillas freemarker
@Controller
public class HomeController {
    //anotacion que indica la ruta del archivo donde se va a pasar la informacion
    @RequestMapping("/")
    //metodo que se renderizara en index.ftl
    public String index(Model model) {
        //se crea una clase no estatica para la incorporacion de sus metodos
        ReadDB dbQuery = new ReadDB();
        // se le añade el metodo de la clase anterior para hacer la query de los restaurantes, y se añade a un atributo
        model.addAttribute("restaurantes",dbQuery.readRestaurantAPI());
        // devuelve el metodo index y sus datos
        return "index";
    }
}

