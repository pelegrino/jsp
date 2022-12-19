package dao;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.SingleConnectionBanco;

public class DaoVersionadorBanco implements Serializable {

	private static final long serialVersionUID = 1L;

	private Connection connection;
	
	public DaoVersionadorBanco() {
		connection = SingleConnectionBanco.getConnection();
		
	}
	
	public void gravaArquivoSqlRodado (String nome_file) throws Exception {
		
		String sql = "insert into versionadorbanco (arquivo_sql) values (?)";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setString(1, nome_file);
		preparedStatement.execute();
		
	
	}
	
	public boolean arquivoSqlRodado (String nome_do_arquivo) throws Exception {
		
		String sql = "select count(1) > 0 as rodado from versionadorbanco where arquivo_sql = ?";
		
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setString(1, nome_do_arquivo);
		
		ResultSet resultSet = preparedStatement.executeQuery();
		resultSet.next();
		
		return resultSet.getBoolean("rodado");
	}
	
}
