package com.seba.lookify.controllers;

import com.seba.lookify.models.Lookify;
import com.seba.lookify.services.LookifyService;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class LookifyController {

    private final LookifyService lookifyService;

    public LookifyController(LookifyService lookifyService) {
        this.lookifyService = lookifyService;
    }

    @GetMapping("/")
    public String home() {
        return "home.jsp";
    }

    @GetMapping("/dashboard")
    public String dashboard(Model model) {
        List<Lookify> allSongs = lookifyService.allSongs();
        model.addAttribute("allSongs", allSongs);
        return "dashboard.jsp";
    }

    @GetMapping("/songs/new")
    public String newSong(@ModelAttribute("song") Lookify song) {
        return "new.jsp";
    }

    @PostMapping("/dashboard")
    public String createSong(@Valid @ModelAttribute("song") Lookify song, BindingResult result) {
        if (result.hasErrors()) {
            return "new.jsp";
        } else {
            lookifyService.createSong(song);
            return "redirect:/dashboard";
        }
    }

    @DeleteMapping("/dashboard/{id}")
    public String destroy(@PathVariable("id") Long id) {
        lookifyService.deleteSong(id);
        return "redirect:/dashboard";
    }

    @GetMapping("/songs/{id}")
    public String show(@PathVariable Long id, Model model) {
        Lookify songId = lookifyService.findSong(id);
        model.addAttribute("songId", songId);
        return "show.jsp";
    }

    @GetMapping("/search/topTen")
    public String topTen(Model viewModel) {
        List<Lookify> topTen = lookifyService.topTen();
        viewModel.addAttribute("topTen", topTen);
        return "topTen.jsp";
    }

    @GetMapping("/search")
    public String songByArtist(@RequestParam(value = "q") String searchQuery, Model model) {
        List<Lookify> list = lookifyService.findAllByArtist(searchQuery);
        model.addAttribute("q", searchQuery);
        model.addAttribute("list", list);
        return "artist.jsp";
    }


}
