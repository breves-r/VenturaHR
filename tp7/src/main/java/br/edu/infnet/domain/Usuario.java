package br.edu.infnet.domain;

public class Usuario {
    private Integer id;
    private String nome;
    private String endereco;
    private String telefone;
    private String email;
    private String senha;
    private String conta;
    private String cpf;
    private String razaoSocial;
    private String cnpj;
    
    
    public Integer getId() {
		return id;
	}

    public void setId(Integer id) {
		this.id = id;
	}
    
    public String getNome() {
		return nome;
	}
    public String getEmail() {
		return email;
	}

    public void setNome(String nome) {
		this.nome = nome;
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
    
    public String getConta() {
		return conta;
	}
	
    public void setConta(String conta) {
		this.conta = conta;
	}

    public String getCpf() {
		return cpf;
	}
	
    public void setCpf(String cpf) {
		this.cpf = cpf;
	}
    
    public String getRazaoSocial() {
		return razaoSocial;
	}
	
    public void setRazaoSocial(String razaoSocial) {
		this.razaoSocial = razaoSocial;
	}
    
    public String getCnpj() {
		return cnpj;
	}
	
    public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}
}
