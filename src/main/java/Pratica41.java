
import utfpr.ct.dainf.if62c.pratica.Circulo;
import utfpr.ct.dainf.if62c.pratica.Elipse;

/**
 * UTFPR - Universidade Tecnológica Federal do Paraná
 * DAINF - Departamento Acadêmico de Informática
 * IF62C - Fundamentos de Programação 2
 * 
 * Template de projeto de programa Java usando Maven.
 * @author Wilson Horstmeyer Bogado <wilson@utfpr.edu.br>
 */
public class Pratica41 {
    public static void main(String[] args) {
        Elipse e = new Elipse(5, 5);
        Circulo c = new Circulo(5);

        double pe = e.getPerimetro();
        double ae = e.getArea();
        double pc = c.getPerimetro();
        double ac = c.getArea();
        double dp = pe - pc;
        double da = ae - ac;

        if (Math.abs(dp) < 1e-4) {
            System.out.println(String.format("Diferenca de perímetros (%g) é aceitável.", dp));
        } else {
            System.out.println(String.format("Cálculo incorreto. Diferença de perímetros (%g) excessiva", dp));
        }

        if (ae == ac) {
            System.out.println("Cáculo correto. Áreas são iguais.");
        } else {
            System.out.println(String.format("Cálculo incorreto. Diferença de áreas (%g) excessiva", da));
        }
    }
}
