import java.io.BufferedReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Scanner;

public class D1P2
{
    public static void main(String[] args) {
        Path arq = Paths.get("input");
        try (BufferedReader br = new BufferedReader(Files.newBufferedReader(arq)))
        {
            ArrayList<Integer> lista = new ArrayList<>(300);
            String line;
            while((line = br.readLine()) != null)
            {
                lista.add(Integer.parseInt(line));
            }
            int cont;
            int measurement = 0;
            int sum = Integer.MAX_VALUE;
            for(int i = 0; i < lista.size() - 2; i++)
            {
                cont = lista.get(i) + lista.get(i + 1) + lista.get(i + 2);
                if ( sum < cont )
                    measurement++;
                sum = cont;
            }
            System.out.println(measurement);
        } catch (Exception io)
        {
            io.printStackTrace();
        }

    }
}
