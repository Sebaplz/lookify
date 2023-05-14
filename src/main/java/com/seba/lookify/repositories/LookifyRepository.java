package com.seba.lookify.repositories;

import com.seba.lookify.models.Lookify;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LookifyRepository extends CrudRepository<Lookify, Long> {

    List<Lookify> findAll();

    List<Lookify> findTop10ByOrderByClasificacionDesc();

    List<Lookify> findAllByArtista(String artista);
}
