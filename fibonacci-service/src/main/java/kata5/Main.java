package kata5;

public class Main {

	static void main(String[] args) throws Exception {
		Webservice webservice = new Webservice(args[0], args[1], Integer.parseInt(args[2]), args[3]);
		webservice.start();
	}
}
