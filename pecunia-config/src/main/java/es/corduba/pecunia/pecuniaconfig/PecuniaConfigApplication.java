package es.corduba.pecunia.pecuniaconfig;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@SpringBootApplication
@EnableConfigServer
public class PecuniaConfigApplication {

	public static void main(String[] args) {
		SpringApplication.run(PecuniaConfigApplication.class, args);
	}

}
