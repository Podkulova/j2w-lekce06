package cz.czechitas.java2webapps.lekce6.controller.cokolada;

import cz.czechitas.java2webapps.lekce6.controller.alkohol.Objem;
import jakarta.validation.constraints.AssertTrue;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;


/*Formulář bude obsahovat:
 * výběr z druhů čokolády, např.: mléčná, bíla, hořká (select)
 * Jméno a příjmení (input)
 * e-mail – volitelný údaj (input)
 * souhlas s obchodními podmínkami (check box)*/

public class CokoladaForm {
    @NotBlank
    private String jmenoPrijmeni;
    @NotNull
    private String cokolada;
    @Email
    private String email;
    @AssertTrue
    private boolean obchodniPodminky;

    public String getJmenoPrijmeni() {
        return jmenoPrijmeni;
    }

    public void setJmenoPrijmeni(String jmenoPrijmeni) {
        this.jmenoPrijmeni = jmenoPrijmeni;
    }

    public String getCokolada() {
        return cokolada;
    }

    public void setCokolada(String cokolada) {
        this.cokolada = cokolada;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isObchodniPodminky() {
        return obchodniPodminky;
    }

    public void setObchodniPodminky(boolean obchodniPodminky) {
        this.obchodniPodminky = obchodniPodminky;
    }
}
