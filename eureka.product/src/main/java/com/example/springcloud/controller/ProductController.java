package com.example.springcloud.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ProductController {

    @GetMapping(value = "hello/{name}")
    public String hello(@PathVariable String name) {
        String x = "hello " + name + "!";
        System.out.println(x);
        return x;
    }
}
