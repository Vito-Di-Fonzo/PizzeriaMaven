package model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "IMPASTO")
public class Impasto {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_impasto")
	private int id;
	@Column(name = "name")
	private String name;
	@OneToMany(mappedBy = "impasto")
	private List<Pizza> pizza;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<Pizza> getPizza() {
		return pizza;
	}
	public void setPizza(List<Pizza> pizza) {
		this.pizza = pizza;
	}
}