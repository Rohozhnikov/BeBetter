package mum.edu.repository;

import java.util.List;

public interface BaseRepository<T> {
	
	T add(T t);

	T update(T t);

	void delete(T t);

	T get(int id);
	
	List<T> getAll();

}
