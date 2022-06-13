CREATE TABLE public.staff (
	id serial4 NOT NULL,
	id_departament int4 NOT NULL,
	supervisor int4 NULL,
	first_name varchar(20) NOT NULL,
	last_name varchar(20) NOT NULL,
	CONSTRAINT staff_pk PRIMARY KEY (id),
	CONSTRAINT staff_fk FOREIGN KEY (id_departament) REFERENCES public.department(id),
	CONSTRAINT staff_fk1 FOREIGN KEY (supervisor) REFERENCES public.staff(id)
);