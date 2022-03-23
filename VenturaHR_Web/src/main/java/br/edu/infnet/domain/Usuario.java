package br.edu.infnet.domain;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

public class Usuario {
    private Integer id;
    @NotBlank(message = "O campo Nome é obrigatório")
    private String nome;
    @NotBlank(message = "O campo Endereço é obrigatório")
    private String endereco;
    @NotBlank(message = "O campo Telefone é obrigatório")
    private String telefone;
    @NotBlank(message = "O campo Email é obrigatório")
    @Email(message = "Email inválido")
    private String email;
    @NotBlank(message = "O campo Senha é obrigatório")
    private String senha;
    private String cpf;
    private String cnpj;
    private String razaoSocial;

    @Override
    public String toString() {
        return "Usuario{" + "nome=" + nome + ", endereco=" + endereco + ", telefone=" + telefone + ", email=" + email + ", senha=" + senha + ", cpf=" + cpf + ", cnpj=" + cnpj + ", razaoSocial=" + razaoSocial + ", tipo=" + tipo + '}';
    }
    //@NotBlank(message = "O campo Tipo é obrigatório")
    private Character tipo;

    public Usuario(){
        
    }
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getRazaoSocial() {
        return razaoSocial;
    }

    public void setRazaoSocial(String razaoSocial) {
        this.razaoSocial = razaoSocial;
    }

    public Character getTipo() {
        return tipo;
    }

    public void setTipo(Character tipo) {
        this.tipo = tipo;
    }
    
    
}
