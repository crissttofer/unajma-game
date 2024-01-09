-- Active: 1689699292532@@127.0.0.1@3306@biblioteca
DROP DATABASE if EXISTS biblioteca;
CREATE DATABASE biblioteca;
USE biblioteca;

DROP TABLE IF EXISTS usuario;
CREATE TABLE usuario(
    correo VARCHAR(250) PRIMARY KEY NOT null,
    nombre VARCHAR(100) NOT NULL,
    password VARCHAR(250) NOT NULL
);

DROP TABLE IF EXISTS libro;
CREATE TABLE libro (
  isbn char(13) NOT NULL,
  sku char(13) NOT NULL,
  estado char(10) NOT NULL,
  portada varchar(100) NOT NULL,
  idioma char(20) DEFAULT NULL,
  titulo varchar(50) NOT NULL,
  nomAutor varchar(100) NOT NULL,
  editorial varchar(20) DEFAULT NULL,
  sinopsis text,
  fechPubli date DEFAULT NULL,
  escuela VARCHAR(30),
  categoria VARCHAR(20),
  PRIMARY KEY (isbn)
);

INSERT INTO libro (isbn,sku,estado,portada,idioma,titulo,nomAutor,editorial,sinopsis,fechPubli,escuela,categoria) VALUES 
('9780060850525','BK007-SCF-007','virtual','../inicio/assets/img/diccionario-pearson.jpeg','Ingles','Diccionario Pearson','Pearson','Pearson','El "Diccionario Pearson" es una completa obra lexicográfica que brinda una amplia gama de información sobre el idioma en cuestión. Con una exhaustiva cobertura de vocabulario, definiciones claras y precisas, así como ejemplos contextualizados, este diccionario se presenta como una valiosa herramienta para aquellos que buscan mejorar sus habilidades lingüísticas. Desde estudiantes hasta profesionales, todos encontrarán en sus páginas una fuente de conocimiento confiable y actualizada para enriquecer su dominio del idioma.','2005-07-09','EPIS','Idioma'),
('9780061122425','BK003-ADV-003','no-virtual','../inicio/assets/img/biologia-cj.jpeg','Ingles','Biology','Cj Clegg','fantastico','El libro de Biología es una fascinante y exhaustiva obra de referencia que explora los misterios y maravillas del mundo de la vida. Desde las complejas interacciones moleculares dentro de una célula hasta la diversidad de ecosistemas que se extienden por el planeta, esta obra proporciona una visión completa y actualizada de los conocimientos científicos en el campo de la biología. Los lectores serán guiados a través de los fundamentos de la genética, la anatomía, la ecología y la evolución, y descubrirán cómo estos conceptos se entrelazan para dar lugar a la increíble variedad de formas de vida que existen.','2019-08-23','EPIAM','Ciencias Naturales'),
('9780140177348','BK005-FIC-005','virtual','../inicio/assets/img/calculo-ernesto-javier.jpeg','Español','Calculo','Rafael perez','Reverte','El libro de Cálculo es una guía completa y didáctica que desentraña los misterios matemáticos detrás del cambio continuo y las variaciones en nuestro mundo. Desde sus fundamentos hasta aplicaciones prácticas, este texto te lleva de la mano a través del emocionante viaje del cálculo diferencial e integral.Descubre cómo las derivadas desvelan las velocidades, pendientes y tasas de cambio instantáneas, permitiéndote comprender el movimiento y los cambios dinámicos en la naturaleza y la ciencia. Adéntrate en las integrales, y desvela la magia de calcular áreas, volúmenes, acumulaciones y mucho más. Ya seas un estudiante, profesional o amante de las matemáticas, este libro te brinda una herramienta esencial para resolver problemas del mundo real, modelar fenómenos naturales y desarrollar soluciones ingeniosas en diversos campos.','2021-11-04','EPIA, EPIAM, EPIS','Ciencias Matemáticas'),
('9780142437530','BK004-PLT-004','virtual','../inicio/assets/img/calculo-diferencial-Nancy-Saravia.jpeg','Español','Calculo diferencial','Nancy Saravia','oxford','El libro de Cálculo Diferencial es una guía completa y accesible que introduce al lector en los fundamentos de esta fascinante rama de las matemáticas. Desde los conceptos básicos de límites y derivadas hasta aplicaciones prácticas en el mundo real, esta obra ofrece una perspectiva clara y concisa de cómo el cálculo diferencial se aplica en diversos campos. A través de ejemplos ilustrativos y explicaciones detalladas, los lectores descubrirán cómo calcular tasas de cambio instantáneas, analizar la pendiente de curvas y comprender la velocidad y aceleración de objetos en movimiento. El autor guía al lector paso a paso, desde los conceptos fundamentales hasta técnicas más avanzadas, asegurándose de que los principios matemáticos sean comprensibles para aquellos con diferentes niveles de experiencia. Además, el libro resalta la importancia del cálculo diferencial en diversas áreas, desde la física y la ingeniería hasta la economía y las ciencias naturales. Con ejercicios prácticos y desafiantes al final de cada capítulo, los lectores tendrán la oportunidad de aplicar lo aprendido y mejorar sus habilidades de resolución de problemas.','2019-05-01','EPIA, EPIS','Ciencias Matemáticas'),
('9780316769179','BK002-MYS-002','no-virtual','../inicio/assets/img/biologia-Andrew-allott.jpeg','Español','Biologia','Andrew Allott','Oxford','Sintetizando la esencia misma de la vida, el libro Biología nos lleva en un emocionante viaje a través de los misterios y maravillas del mundo natural. Desde las diminutas estructuras celulares hasta los majestuosos ecosistemas, esta obra maestra de la ciencia nos sumerge en el fascinante estudio de la vida en todas sus formas. Con una prosa accesible pero rigurosa, el autor nos guía a través de los conceptos fundamentales de la biología, revelando cómo las interacciones entre organismos, genes y entorno dan forma a la diversidad y complejidad de nuestro planeta. A medida que exploramos la genética, la evolución, la ecología y otros campos, descubrimos cómo la biología no solo nos ayuda a comprender el pasado y el presente, sino también a enfrentar los desafíos del futuro. Este libro se convierte en un fascinante testimonio de la extraordinaria interconexión de la vida y nos inspira a apreciar y proteger la asombrosa riqueza de la naturaleza que nos rodea.','2018-02-02','EPIAM','Ciencias Naturales'),
('9780451524915','BK001-LRN-001','virtual','../inicio/assets/img/artes-visuales.jpeg','Español','Artes visuales','Simon popey','Oxford','"Artes Visuales" es una cautivadora obra que nos sumerge en el apasionante mundo del arte a través de una rica y variada colección de imágenes y conceptos. Desde las pinturas rupestres prehistóricas hasta las expresiones artísticas contemporáneas, el libro ofrece un viaje a través del tiempo y el espacio, explorando las diversas formas de expresión visual creadas por la humanidad a lo largo de la historia. Con una narrativa accesible y enriquecedora, los lectores son guiados a través de las distintas corrientes artísticas, estilos y movimientos que han definido épocas y culturas. Desde el Renacimiento hasta el Impresionismo, el Cubismo, el Surrealismo y más allá, las páginas del libro cobran vida con las obras maestras de los grandes artistas y sus inspiradores relatos. Además de abordar la evolución del arte, "Artes Visuales" también explora los principios fundamentales de la composición, el color, la perspectiva y la técnica artística. Estos elementos clave se presentan de manera accesible, permitiendo a los lectores comprender cómo los artistas han creado piezas cautivadoras que trascienden el tiempo y dejan huellas indelebles en la cultura y la sociedad. A través de una combinación de imágenes impactantes y análisis perspicaces, "Artes Visuales" es una guía inspiradora que celebra la creatividad humana y nos invita a apreciar y reflexionar sobre el poder y la belleza del arte visual en todas sus manifestaciones. Un viaje inolvidable para los amantes del arte y una ventana hacia el mundo del arte para quienes buscan adentrarse en este fascinante universo creativo.','2018-02-03','EPEPI','Artes'),
('9780451529010','BK009-TEC-009','virtual','../inicio/assets/img/El-jardin-de-cerezos-anton-chejov.jpeg','Español','El jardin de cerezos','Anton chejov','Greenbooks','"El Jardín de Cerezos" (también conocida como "El Cerezo en el Jardín") es una famosa obra teatral escrita por el dramaturgo ruso Antón Chéjov. Ambientada en la Rusia pre-revolucionaria, la historia se centra en la decadente familia de Ranevskaya, dueña de una gran finca y un hermoso jardín de cerezos. La trama gira en torno a la lucha de la familia por mantener su propiedad y evitar que la finca sea subastada para saldar las deudas acumuladas. Ranevskaya regresa a su hogar después de haber vivido en París durante varios años, pero se enfrenta a la dolorosa realidad de su situación económica y a la inminente pérdida de su amado jardín de cerezos. El personaje principal, Liubov Ranevskaya, es una mujer melancólica y nostálgica que lucha por aceptar los cambios inevitables de la vida y las decisiones que ha tomado en el pasado. La obra también presenta una serie de personajes secundarios memorables, incluyendo a Lopajin, un empresario local que ofrece soluciones para salvar la finca, y Varia, la hija adoptiva de Ranevskaya, que está enamorada de Trofimov, un estudiante revolucionario. "El Jardín de Cerezos" es conocida por su retrato de la transición entre el viejo orden y el nuevo, simbolizado por el antiguo jardín de cerezos que representa la tradición y el cambio social que amenaza con talarlo. A través de diálogos emotivos y poéticos, Chéjov presenta temas profundos como la pérdida, la nostalgia, la decadencia de la nobleza y la evolución de la sociedad rusa en ese período histórico. La obra ha sido elogiada por su complejidad psicológica y su reflexión sobre la condición humana, convirtiéndose en un clásico del teatro que ha sido representado y admirado en todo el mundo desde su estreno en 1904.','2010-09-10','EPEPI','Literatura'),
('9780553211157','BK010-FAN-010','no-virtual','../inicio/assets/img/el-libro-del-hacker.jpeg','Ingles','El libro del hacker','Kevin chipana','Complete edit','"El Libro del Hacker" es una emocionante novela de suspense y tecnología que sumerge a los lectores en el intrigante mundo de la ciberseguridad y la piratería informática. La historia sigue a un joven y talentoso programador llamado Alex, quien lleva una vida aparentemente normal, pero que oculta un talento excepcional para infiltrarse en sistemas informáticos y desentrañar los secretos mejor guardados. Cuando una poderosa y misteriosa organización criminal comienza a aterrorizar el mundo virtual y amenaza con desestabilizar la seguridad global, Alex se encuentra inesperadamente envuelto en un juego peligroso. Reclutado por una agencia gubernamental de élite, debe utilizar sus habilidades para rastrear a los hackers maliciosos y descubrir la verdad detrás de sus siniestros planes. A medida que Alex se sumerge más profundamente en el oscuro submundo de la piratería, se enfrenta a dilemas éticos y dilemas morales, cuestionando su papel en esta lucha entre el bien y el mal. Con la ayuda de un equipo diverso de expertos en tecnología y la presión constante de los acontecimientos, Alex se embarca en una emocionante búsqueda para detener a los criminales informáticos antes de que sea demasiado tarde. "El Libro del Hacker" no solo es una novela llena de acción y suspenso, sino que también aborda temas actuales y relevantes sobre la ética en la tecnología, la privacidad en línea y las consecuencias del abuso del poder cibernético. Esta cautivadora historia te mantendrá al borde de tu asiento mientras Alex se enfrenta a desafíos cada vez mayores y lucha por proteger lo que más le importa en un mundo donde las fronteras entre lo virtual y lo real se desdibujan.','2011-07-08','EPIS','Hacking Ético'),
('9780743273515','BK006-BIO-006','virtual','../inicio/assets/img/calculo-german-rojas.jpeg','Español','Calculo integral','German Rojas','oxford','"Sumerge en el fascinante mundo del cálculo integral a través de esta cautivadora obra. El libro de Cálculo Integral te llevará en un emocionante viaje matemático desde los fundamentos hasta las aplicaciones más sorprendentes. Explora las maravillas de integrar funciones y descubre cómo calcular áreas bajo curvas, volúmenes de sólidos tridimensionales y la acumulación de cantidades cambiantes a lo largo del tiempo. A medida que avanzas por sus páginas, aprenderás poderosas técnicas de integración y resolverás problemas prácticos en diversos campos, desde física y estadística hasta economía y ciencias de la computación. Con ejemplos claros y explicaciones detalladas, este libro se convierte en una herramienta esencial para estudiantes, profesionales y curiosos que buscan comprender y dominar el arte del cálculo integral. Prepárate para desvelar los misterios de esta fascinante rama matemática y descubre cómo su poderosa belleza transforma la manera en que percibimos y resolvemos problemas en el mundo real."','2011-03-06','EPIS, EPIA','Ciencias Matemáticas'),
('9780765341977','BK008-HIS-008','no-virtual','../inicio/assets/img/economia-jocelyn-bink.jpeg','Ingles','Economy','Jocelyn bink','Oxford','"El libro Economía ofrece un apasionante recorrido por los principios fundamentales y las complejidades del sistema económico mundial. Desde los conceptos básicos de oferta y demanda hasta el funcionamiento de los mercados financieros internacionales, esta obra presenta de manera accesible y cautivadora una amplia variedad de temas económicos. Los lectores descubrirán cómo se toman decisiones económicas a nivel individual, empresarial y gubernamental, y cómo estas decisiones impactan en la sociedad en su conjunto. Con ejemplos prácticos y datos actualizados, el libro aborda cuestiones cruciales como la inflación, el desempleo, la globalización y el desarrollo económico. Se exploran también las teorías económicas más influyentes y las políticas aplicadas en diferentes contextos históricos. Tanto para estudiantes como para lectores interesados en comprender el mundo económico que nos rodea, esta obra es una guía esencial para adentrarse en los principios y debates fundamentales de la economía moderna."','2022-06-30','EPAE','Economia');

INSERT INTO libro (isbn,sku,estado,portada,idioma,nomAutor,titulo,editorial,sinopsis,fechPubli,escuela,categoria)
VALUES
('9780451526342','BK011-ROM-011','no-virtual','../inicio/assets/img/El-perfume.jpeg','Español','Patrick Süskind','El perfume','Booket','El Perfume, es una novela fascinante escrita por Patrick Süskind. Esta cautivadora historia sigue la vida de Jean-Baptiste Grenouille, un personaje singular y perturbador, cuya obsesión por los olores lo lleva a cometer actos inquietantes. La narrativa magistral y el detallado retrato de la época hacen de esta obra un viaje inolvidable a través de los sentidos humanos y la búsqueda obsesiva de la perfección olfativa. Una experiencia literaria única e impactante.','2012-09-01','EPEPI','Ficción'),
('9780142000670','BK012-DRM-012','virtual','../inicio/assets/img/el-sexto-jose-maria-arguedas.jpeg','Español','J.Arguedas','El sexto','La union','"El Sexto" de José María Arguedas es una novela conmovedora que explora la vida en una prisión peruana a través de la perspectiva del personaje principal, Gabriel. Arguedas presenta una cruda y realista visión de la crueldad y la injusticia en el sistema carcelario, mientras destaca la lucha por la supervivencia y la esperanza en medio de la desesperación. Una obra maestra literaria que resalta la complejidad del ser humano y su capacidad para encontrar luz en la oscuridad.','2019-04-12','EPEPI','Ficción'),
('9780141183049',' BK013-HOR-013','virtual',' ../inicio/assets/img/estadistica.jpeg','Español','Jorge Roll','Estadistica','Oxford','"Introducción a la Estadística Descriptiva" es una guía completa y accesible para aquellos que se inician en el mundo de la estadística. Con explicaciones claras y ejemplos ilustrativos, el autor presenta los conceptos fundamentales de manera amena y comprensible. Desde la presentación de datos hasta medidas de tendencia central y dispersión, este libro se convierte en una herramienta imprescindible para adquirir una base sólida en estadística y aplicarla en diversas áreas académicas y profesionales.','2023-08-01','EPAE, EPC, EPIS','Ciencias Matemáticas'),
('9780345803158','BK014-ART-014','virtual',' ../inicio/assets/img/estadistica-inferencial-Jose.jpeg','Español','Marta Lopez','Estadistica inferencial','Universitaria','"Estadística Inferencial: Métodos y Aplicaciones" es un libro esencial para comprender la inferencia estadística. Con una sólida base teórica, el autor guía al lector a través de técnicas como pruebas de hipótesis, análisis de varianza y regresión. Con ejemplos prácticos y claridad en la exposición, este libro se convierte en una herramienta valiosa para cualquier estudiante o profesional que desee dominar el análisis e interpretación de datos en la toma de decisiones.','2022-01-01','EPAE, EPC, EPIS','Ciencias Matemáticas'),
('9780064407663','BK015-SCI-015','no-virtual',' ../inicio/assets/img/filosofia-nancy-le-nezet.jpeg','Ingles','Le nezet','Filosofia','Oxford','Es una obra cautivadora que ofrece un recorrido profundo y enriquecedor por los principales pensadores y corrientes filosóficas de la historia. Con estilo claro y perspicaz, el autor explora preguntas fundamentales sobre la existencia, la moral, el conocimiento y la realidad. Este libro invita al lector a reflexionar sobre su propia visión del mundo y proporciona una introducción valiosa a la apasionante disciplina filosófica.','2005-01-11','EPAE, EPEPI, EPIAM','Filosofía'),
-- ('9780380003211','BK016-MYS-016','virtual',' ../inicio/assets/img/fisica-oxford.jpeg','Ingles','Oxford','Fisica','Oxford','es una guía imprescindible para quienes desean mejorar su comprensión y dominio del idioma inglés. Escrito de forma clara y organizado en unidades temáticas, el libro cubre desde conceptos básicos hasta aspectos más avanzados de la gramática','EPIAM, EPIS','Ciencias Físicas'),
('9780439064873','BK017-POE-017','virtual',' ../inicio/assets/img/La-gaviota-anton-chejov.jpeg','Español','A.Chejov','La gaviota','Elejandria','"La Gaviota" de Anton Chekhov es un emotivo drama teatral que explora los conflictos emocionales y las aspiraciones artísticas de sus personajes. La historia se desenvuelve en un ambiente rural, donde el amor, la ambición y los sueños se entrelazan en un entorno social complejo. Con diálogos perspicaces y personajes bien desarrollados, esta obra maestra del teatro ruso perdura como un clásico atemporal que invita a la reflexión sobre la naturaleza humana.','2017-11-22','EPEPI','Literatura'),
('9780345413357','BK018-COM-018','no-virtual',' ../inicio/assets/img/La-tregua-mario-benedetti.jpeg','Español','M.Benedetti','La tregua','Centenario','"La Tregua" de Mario Benedetti es una novela conmovedora que narra la vida cotidiana de Martín Santomé, un hombre maduro y solitario, quien experimenta una inesperada historia de amor en los últimos años de su vida laboral. A través de un estilo sencillo y emotivo, la obra nos sumerge en los sentimientos, anhelos y dilemas existenciales del protagonista, ofreciendo una reflexión profunda sobre la soledad, el amor y la búsqueda de la felicidad. Esta cautivadora novela es una joya literaria que deja una huella duradera en el corazón del lector.','2015-02-01','EPEPI','Literatura'),
('9780451524935','BK019-REL-019','virtual',' ../inicio/assets/img/Matar-a-un-ruiseñor.jpeg','Español','Harper lee','Matar a un ruiseñor','Universal','"Matar a un ruiseñor" de Harper Lee es una poderosa y conmovedora novela que aborda temas de raza, justicia y moral en la América de los años treinta. A través de la voz de Scout Finch, la historia captura la inocencia infantil y la lucha contra el prejuicio y la intolerancia en un pequeño pueblo sureño. Esta obra maestra literaria ofrece una mirada profunda y conmovedora sobre los valores humanos y la lucha por la igualdad en una sociedad compleja.','2020-05-29','EPEPI','Literatura Clásica, Ficción'),
('9780679720201','BK020-SLF-020','virtual',' ../inicio/assets/img/matematica-nivel-medio.jpeg','Español','Oxford','Matematica','Oxford','es una guía esencial para estudiantes que buscan fortalecer sus fundamentos matemáticos. Con explicaciones claras y ejercicios prácticos, el libro abarca temas desde álgebra hasta cálculo, brindando una base sólida para enfrentar desafíos matemáticos más avanzados. Una herramienta imprescindible para el éxito académico y el desarrollo de habilidades cuantitativas.','2016-09-01','EPIAM, EPIS, EPIA','Ciencias Matemáticas'),
('9780743273565','BK021-TRV-021','virtual',' ../inicio/assets/img/psychopath-test.jpeg','Ingles','jon Ronson','Psycopath','Best seller','"Psycopath" es un thriller psicológico cautivador que sigue los pasos de un perturbador asesino en serie. Con una trama llena de giros y suspense, la novela sumerge al lector en la mente retorcida del protagonista y su juego mortal con la justicia. Una lectura inquietante que mantendrá al lector al borde de su asiento hasta la última página.','2015-02-01','EPIS','Idiomas'),
('9780553212157','BK022-CNF-022','no-virtual',' ../inicio/assets/img/quien-de-nosotros-mario-benedetti.jpeg','Español','M.Benedetti','Quien de nosotros','Debolsillo','"Quien de nosotros" es una novela que explora la amistad, la soledad y los sueños de un grupo de jóvenes en una ciudad latinoamericana. Con una prosa poética y reflexiva, el autor retrata las inquietudes y frustraciones de sus personajes, ofreciendo una profunda reflexión sobre la vida y la búsqueda de sentido. Una obra literaria emotiva que deja una huella duradera en el corazón del lector.','2018-03-25','EPEPI','Literatura'),
('9780061122415','BK023-MEM-023','virtual',' ../inicio/assets/img/quimica.jpeg','Español','Steve owen','QUimica','Cambridge','"Química" es un libro esclarecedor que destaca los fundamentos y aplicaciones de la ciencia química. Con un enfoque claro y accesible, el autor guía al lector a través de los conceptos básicos, desde la estructura atómica hasta las reacciones químicas, proporcionando una comprensión sólida y práctica de esta disciplina fundamental. Una lectura esencial para estudiantes y entusiastas que desean adentrarse en el fascinante mundo de la química.','2022-10-02','EPIA, EPIAM','Ciencia Naturales'),
('9780166162417','BK024-PHI-024','no-virtual',' ../inicio/assets/img/reason-for-flowers.jpeg','Ingles','Stephen buch','Reason for flowers','Debolsillo','"Reason" es una novela de suspense y misterio que atrapa al lector desde la primera página. Con giros inesperados y personajes intrigantes, la historia sigue una investigación compleja que desafía al protagonista y pone a prueba su lógica y habilidades deductivas. Una lectura emocionante y adictiva que mantendrá al lector adivinando hasta el final.','2019-08-01','EPIAM, EPIA','Ciencias Naturales'),
('9780261222415','BK025-DRA-025','virtual',' ../inicio/assets/img/rios-profundo-josemaría-arguedas.jpeg','Español','J.Arguedas','Rios profundos','Universal','"Ríos Profundos" de José María Arguedas es una novela conmovedora que relata la vida de un joven mestizo que se enfrenta a la discriminación racial y la búsqueda de su identidad. Con una narrativa poética y emotiva, Arguedas retrata la realidad social y cultural del Perú andino. Una obra literaria que invita a reflexionar sobre la complejidad de las relaciones humanas y la lucha por la igualdad en un contexto diverso.','2017-09-07','EPEPI','Literatura'),
('9781231122415','BK026-COK-026','virtual',' ../inicio/assets/img/stephen-hawking.jpeg','Español','S.Hawking','Breve historia del tiempo','Crítica','"Breve historia del tiempo" de Stephen Hawking es un libro fascinante que explora los misterios del universo y la cosmología. Con un lenguaje claro y accesible, el autor guía al lector a través de conceptos complejos como el origen del universo y los agujeros negros. Esta obra maestra científica ofrece una visión asombrosa y profunda sobre el cosmos y nuestra existencia en él.','2018-04-23','EPIS','Ciencia Popular');