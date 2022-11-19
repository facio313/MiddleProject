package volunteer;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class test {
	public static void main(String[] args) {
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
		int now = Integer.parseInt(LocalDate.now().format(formatter));
		System.out.println(now);

		
	}
}
