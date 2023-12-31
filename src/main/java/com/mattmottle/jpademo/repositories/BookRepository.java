package com.mattmottle.jpademo.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.mattmottle.jpademo.models.Book;

@Repository
public interface BookRepository extends CrudRepository<Book, Long> {
	// this method retrieves all books from database
	List<Book> findAll();
	// this method finds books with descriptions containing the search string
	List<Book> findByDescriptionContaining( String search);
	// find by title
	List<Book> findByTitle(String title);
	//this method counts how many titles contain a certain string
	Long countByTitleContaining(String search);
	// this method deletes a book that starts with a specific title
	Long deleteByTitleStartingWith(String search);
}
