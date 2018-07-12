package com.sushma.JPA2.JPATransaction;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.sushma.JPA2.JPATransaction.servcies.BankAccountService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class JpaTransactionApplicationTests {

	@Autowired
	private BankAccountService service;
	
	@Test
	public void contextLoads() {
	}
	
	@Test
	public void testTransfer() {
		service.transfer(100d);
	}

}
