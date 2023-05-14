package com.seba.lookify.services;

import com.seba.lookify.models.Lookify;
import com.seba.lookify.repositories.LookifyRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class LookifyService {

    private final LookifyRepository lookifyRepository;

    public LookifyService(LookifyRepository lookifyRepository) {
        this.lookifyRepository = lookifyRepository;
    }

    public List<Lookify> allSongs() {
        return lookifyRepository.findAll();
    }

    public Lookify findSong(Long id) {
        Optional<Lookify> optionalLookify = lookifyRepository.findById(id);
        return optionalLookify.orElse(null);
    }

    public Lookify createSong(Lookify lookify) {
        return lookifyRepository.save(lookify);
    }

    public void deleteSong(Long id) {
        Lookify lookify = findSong(id);
        lookifyRepository.deleteById(lookify.getId());
    }

    public List<Lookify> topTen() {
        return lookifyRepository.findTop10ByOrderByClasificacionDesc();
    }

    public List<Lookify> findAllByArtist(String artista) {
        List<Lookify> lookifies = lookifyRepository.findAllByArtista(artista);
        if (lookifies.isEmpty()) {
            return null;
        } else {
            return lookifies;
        }
    }
}
