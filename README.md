# NoteTaker

<?xml version="1.0" encoding="UTF-8"?>

<hibernate-configuration>
	<session-factory>
		<property name="connection.driver_class">com.mysql.cj.jdbc.Driver</property>
		<property name="connection.url">jdbc:mysql://localhost:3306/notes</property>
		<property name="connection.username">root</property>
		<property name="connection.password">Shwet@15</property>
		<property name="dialect">org.hibernate.dialect.MySQL8Dialect</property>
		<property name="hbm2ddl.auto">update</property>
		<property name="show_sql">true</property>
		<property name="format_sql">true</property>

		<mapping class="com.example.entity.Note"/>

	</session-factory>

</hibernate-configuration>