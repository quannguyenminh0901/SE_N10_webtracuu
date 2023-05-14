import java.net.*;
import java.io.*;

public class Client {
    public static void main(String[] args) {
        try {
            Socket socket = new Socket("localhost", 3000);
            PrintWriter out = new PrintWriter(socket.getOutputStream(), true);
            BufferedReader in = new BufferedReader(new InputStreamReader(socket.getInputStream()));

            String message = "Hello from client!";
            out.println(message);

            String response = in.readLine();
            System.out.println("Received message from server: " + response);

            in.close();
            out.close();
            socket.close();
        } catch (IOException e) {
            System.out.println("Exception caught when trying to connect to localhost port 3000 or listening for a connection");
            System.out.println(e.getMessage());
        }
    }
}
