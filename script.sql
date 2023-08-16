create table pacientes (
	id_paciente SERIAL primary KEY,
	nome_paciente VARCHAR(50),
	tel_paciente integer,
	email_paciente VARCHAR(50),
	status_paciente bool,
	data_nascimento DATE
);

create table atendimento (
	id_atendimento SERIAL primary key,
	id_paciente integer,
	data_atendimento DATE,
	hr_atendimento TIME,
	nome_unidade varchar(50),
	endereco_unidade text,
	cd_especialidade varchar(50),
	
	constraint fk_atendimento_id_pacinete foreign key (id_paciente) references pacientes(id_paciente)
);

create table prontuario (
	id_prontuario SERIAL primary key,
	id_paciente integer,
	id_atendimento integer,
	descricao_prontuario text,
	
	constraint fk_prontuario_id_paciente foreign key (id_paciente) references pacientes(id_paciente),
	constraint fk_atendimento_id_paciente foreign key (id_atendimento) references atendimento(id_atendimento)
);