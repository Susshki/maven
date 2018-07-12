package com.sushma.JPA2.JPAInheritanceJoined.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;

@Entity
@PrimaryKeyJoinColumn(name="id")
public class BankCheck extends Payment{	

	@Column(name="CHECK_NUMBER")
	private String checkNumber;
	
	public BankCheck() {
		super();
	}
	
	public BankCheck(String checkNumber) {
		super();
		this.checkNumber = checkNumber;
	}

	public String getCheckNumber() {
		return checkNumber;
	}

	public void setCheckNumber(String checkNumber) {
		this.checkNumber = checkNumber;
	}

	@Override
	public String toString() {
		return "BankCheck [checkNumber=" + checkNumber + ", getId()=" + getId() + ", getAmount()=" + getAmount()
				+ ", toString()=" + super.toString() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ "]";
	}
	
	
}
