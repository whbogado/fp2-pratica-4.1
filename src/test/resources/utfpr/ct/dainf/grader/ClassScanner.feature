Feature: Avalia a Prática 4.1 de IF62C-Fundamentos de Programação 2
    Como professor da disciplica de Fundamentos de Programação 2
    Quero avaliar a prática 4.1
    A fim de verificar a compreensão dos estudantes

    Background:
        Given the maximum grade is 100
        Given the main class is 'Pratica41'
        Given I set the script timeout to 3000
        Given I evaluate 'import utfpr.ct.dainf.if62c.pratica.*'
        Given I evaluate 'import utfpr.ct.dainf.grader.*'
        Given I evaluate 'import java.util.regex.*'
    
    Scenario: Verifica se a classe Pratica41 classe existe no pacote padrão e contem o método main (5 pontos)
        Given I report 'Iniciando avaliação...'
        Given I report 'Avaliando item 3...'
        Given class 'Pratica41' exists somewhere store class in <mainClass>
        Given the class <mainClass> is in the 'default' package
        And class <mainClass> has 'public' modifier
        And class <mainClass> declares 'main(java.lang.String[])' method save in <mainMethod>
        And method <mainMethod> returns type 'void'
        And member <mainMethod> has 'public' modifier
        And member <mainMethod> has 'static' modifier
        Then award 5 points

    Scenario: Verifica se a classe Elipse existe e tem o construtor especificado (15 pontos)
        Given I report 'Avaliando item 4...'
        Given class 'utfpr.ct.dainf.if62c.pratica.Elipse' exists store class in <elipseClass>
        Then award 5 points
        Given class <elipseClass> declares 'Elipse(double,double)' constructor save in <elipseConst>
        And member <elipseConst> has 'public' modifier
        Then award 10 points

    Scenario: Verifica se o método getArea foi corretamente implementado (15 pontos)
        Given I report 'Avaliando item 5...'
        Given class <elipseClass> declares 'getArea()' method save in <eareaMethod>
        And member <eareaMethod> has 'public' modifier
        And method <eareaMethod> returns type 'double'
        Then award 5 points
        Given I evaluate 'double se1Test = TestUtils.random(2.0, 5.0), se2Test = TestUtils.random(2.0, 5.0);'
        Given I evaluate 'elipse1Test = new ElipseTest(se1Test, se2Test)'
        Given I evaluate 'elipse2Test = new Elipse(se1Test, se2Test)'
        And expression 'Math.abs(elipse1Test.getArea()-elipse2Test.getArea()) < 0.0001' evaluates to <true>
        Then award 10 points

    Scenario: Verifica se o método getPerimetro foi corretamente implementado (15 pontos)
        Given class <elipseClass> declares 'getPerimetro()' method save in <eperimMethod>
        And member <eperimMethod> has 'public' modifier
        And method <eperimMethod> returns type 'double'
        Then award 5 points
        Given I evaluate 'se1Test = TestUtils.random(2.0, 5.0); se2Test = TestUtils.random(2.0, 5.0);'
        Given I evaluate 'elipse1Test = new ElipseTest(se1Test, se2Test)'
        Given I evaluate 'elipse2Test = new Elipse(se1Test, se2Test)'
        And expression 'Math.abs(elipse1Test.getPerimetro()-elipse2Test.getPerimetro()) < 0.0001' evaluates to <true>
        Then award 10 points

    Scenario: Verifica se a classe Circulo existe e tem o construtor especificado (30 pontos)
        Given I report 'Avaliando item 6...'
        Given class 'utfpr.ct.dainf.if62c.pratica.Circulo' exists store class in <circuloClass>
        And class <circuloClass> is assignable from 'utfpr.ct.dainf.if62c.pratica.Elipse'
        Then award 20 points
        Given class <circuloClass> declares 'Circulo(double)' constructor save in <circuloConst>
        And member <circuloConst> has 'public' modifier
        Then award 10 points

    Scenario: Verifica se o método getPerimetro foi corretamente implementado (15 pontos)
        Given I report 'Avaliando item 7...'
        Given class <circuloClass> declares 'getPerimetro()' method save in <cperimMethod>
        And member <cperimMethod> has 'public' modifier
        And method <cperimMethod> returns type 'double'
        Then award 5 points
        Given I evaluate 'raioTest = TestUtils.random(2.0, 5.0);'
        Given I evaluate 'circulo1Test = new CirculoTest(raioTest)'
        Given I evaluate 'circulo2Test = new Circulo(raioTest)'
        And expression 'Math.abs(circulo1Test.getPerimetro()-circulo2Test.getPerimetro()) < 0.0001' evaluates to <true>
        Then award 10 points

    Scenario: Verifica se exibe algo numérico na saída (5 pontos)
        Given I report 'Avaliando item 8...'
        Given I evaluate 'testMain = new Pratica41()'
        Given I set output to <testOut>
        And I evaluate 'testMain.main(new String[0])'
        And I set output to <default>
        And <testOut> matches regex '.*\d+.*' with 'Pattern.DOTALL' option
        Then award 5 points

    Scenario: Report final grade.
        Given I report grade formatted as 'FINAL GRADE: %.1f'
