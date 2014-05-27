package utfpr.ct.dainf.if62c.pratica;

/**
 * IF62C Fundamentos de Programação 2
 * Exercício de programação em Java.
 * @author Wilson Horstmeyer Bogado <wilson@utfpr.edu.br>
 */
public class Elipse {
    private double semiEixo1;
    private double semiEixo2;

    public Elipse() {
        semiEixo1 = semiEixo2 = 0;
    }

    public Elipse(double semiEixo1, double semiEixo2) {
        this.semiEixo1 = semiEixo1;
        this.semiEixo2 = semiEixo2;
    }

    public double getSemiEixo1() {
        return semiEixo1;
    }

    public void setSemiEixo1(double semiEixo1) {
        this.semiEixo1 = semiEixo1;
    }

    public double getSemiEixo2() {
        return semiEixo2;
    }

    public void setSemiEixo2(double semiEixo2) {
        this.semiEixo2 = semiEixo2;
    }

    public double getArea() {
        return Math.PI * semiEixo1 * semiEixo2;
    }

    public double getPerimetro() {
        return Math.PI * (3 * (semiEixo1 + semiEixo2) -
            Math.sqrt((3 * semiEixo1 + semiEixo2) * (semiEixo1 + 3 * semiEixo2)));
    }
}
