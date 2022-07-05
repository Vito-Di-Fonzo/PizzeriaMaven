package model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "INGREDIENTI")
public class Ingredienti {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idingrediente")
	private int id;
	@Column(name = "nome")
	private String name;
	@ManyToMany(targetEntity = Ingredienti.class, cascade = { CascadeType.ALL })
	@JoinTable(name = "pizza_ingrediente", joinColumns = { @JoinColumn(name = "idpizza") }, inverseJoinColumns = {
			@JoinColumn(name = "idingrediente") })
	private Set<Pizza> pizza;

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

	public Set<Pizza> getPizza() {
		return pizza;
	}

	public void setPizza(Set<Pizza> pizza) {
		this.pizza = pizza;
	}
}