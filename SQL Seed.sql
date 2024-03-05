INSERT INTO [Users] ([email], [pass], [username], [admin]) VALUES ('user1@example.com', 'password1', 'user1', 0);
INSERT INTO [Users] ([email], [pass], [username], [admin]) VALUES ('user2@example.com', 'password2', 'user2', 0);
INSERT INTO [Users] ([email], [pass], [username], [admin]) VALUES ('admin@example.com', 'adminpassword', 'admin', 1);

INSERT INTO languages (Language) VALUES ('Spanish');
INSERT INTO languages (Language) VALUES ('Mandarin');

INSERT INTO levels ([Name]) VALUES ('A1');
INSERT INTO levels ([Name]) VALUES ('A2');
INSERT INTO levels ([Name]) VALUES ('B1');
INSERT INTO levels ([Name]) VALUES ('B2');
INSERT INTO levels ([Name]) VALUES ('C1');
INSERT INTO levels ([Name]) VALUES ('C2');
INSERT INTO levels ([Name]) VALUES ('A1A2');
INSERT INTO levels ([Name]) VALUES ('A2B1');
INSERT INTO levels ([Name]) VALUES ('B1B2');
INSERT INTO levels ([Name]) VALUES ('B2C1');
INSERT INTO levels ([Name]) VALUES ('C1C2');

INSERT INTO answers (string, levelId, languageId) VALUES ('Me llamo ___.', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Soy de los Estados Unidos.', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Comí esta mañana.', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Hola, ¿Cómo está?', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Hola, ¿Cómo está?', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Me llamo ___.', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Soy de los Estados Unidos.', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Comí esta mañana.', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Soy de los Estados Unidos.', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Hola, ¿Cómo está?', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Comí esta mañana.', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Me llamo ___.', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES (N'妈妈嘛马骂吗？', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我很好。', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES (N'是的，我今天早上吃过了。', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我的名字是___。', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我很好。', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我的名字是___。', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES (N'妈妈嘛马骂吗？', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES (N'是的，我今天早上吃过了。', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Hi, how are you?', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('What is this?', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('This smells disgusting?', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Mom scolds the horse?', 1, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 1, 1);

INSERT INTO answers (string, levelId, languageId) VALUES ('Hola', 2, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Adiós', 2, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Gracias', 2, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Por favor', 2, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 2, 1);

INSERT INTO answers (string, levelId, languageId) VALUES ('Comemos', 2, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Comen', 2, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Come', 2, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Coméis', 2, 1);

INSERT INTO answers (string, levelId, languageId) VALUES ('Rojo', 2, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Azul', 2, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Amarillo', 2, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Verde', 2, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 2, 1);

INSERT INTO answers (string, levelId, languageId) VALUES (N'我想吃饭。', 2, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我想喝水。', 2, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我想看电视。', 2, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我想睡觉。', 2, 2);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 2, 2);

INSERT INTO answers (string, levelId, languageId) VALUES (N'今天是星期一。', 2, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'今天是星期六。', 2, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'今天是星期三。', 2, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'今天是星期五。', 2, 2);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 2, 2);

INSERT INTO answers (string, levelId, languageId) VALUES (N'我喜欢吃面包。', 2, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我喜欢喝牛奶。', 2, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我喜欢吃肉。', 2, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我喜欢吃苹果。', 2, 2);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 2, 2);

INSERT INTO answers (string, levelId, languageId) VALUES ('Me gusta jugar al fútbol.', 3, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Me gusta cocinar libros.', 3, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Me gusta volar en avión.', 3, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Me gusta pintar edificios.', 3, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 3, 1);

INSERT INTO answers (string, levelId, languageId) VALUES ('Voy al cine.', 3, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Cocino una pizza.', 3, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Hago una fiesta.', 3, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Estudio chino mandarín.', 3, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 3, 1);

INSERT INTO answers (string, levelId, languageId) VALUES ('Prefiero ir a pie.', 3, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Prefiero ir en bicicleta.', 3, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Prefiero ir en avión.', 3, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Prefiero ir en submarino.', 3, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 3, 1);

INSERT INTO answers (string, levelId, languageId) VALUES (N'我喜欢看电影。', 3, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我喜欢游泳。', 3, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我喜欢滑雪。', 3, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我喜欢打网球。', 3, 2);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 3, 2);

INSERT INTO answers (string, levelId, languageId) VALUES (N'我去睡觉。', 3, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我做饭吃。', 3, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我去散步。', 3, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我去打篮球。', 3, 2);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 3, 2);

INSERT INTO answers (string, levelId, languageId) VALUES (N'我喜欢坐飞机。', 3, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我喜欢骑自行车。', 3, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我喜欢搭地铁。', 3, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我喜欢坐火车。', 3, 2);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 3, 2);

INSERT INTO answers (string, levelId, languageId) VALUES ('Creo que las redes sociales son una pérdida de tiempo y deberíamos desconectarnos de ellas.', 4, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Creo que las redes sociales son muy útiles para mantenerse conectado con amigos y familiares.', 4, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Creo que las redes sociales son solo para personas jóvenes.', 4, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Creo que las redes sociales no tienen ningún impacto en la sociedad.', 4, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 4, 1);

INSERT INTO answers (string, levelId, languageId) VALUES ('Propondría aumentar el uso de transporte público y bicicletas.', 4, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Propondría construir más fábricas para crear empleo.', 4, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Propondría prohibir la circulación de vehículos a motor.', 4, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Propondría ignorar el problema de la contaminación.', 4, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 4, 1);

INSERT INTO answers (string, levelId, languageId) VALUES ('Creo que la educación presencial es obsoleta y deberíamos cambiar completamente a la educación virtual.', 4, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Creo que la educación virtual y la educación presencial son igualmente efectivas.', 4, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Creo que la educación virtual ofrece más flexibilidad pero la educación presencial es más efectiva para aprender.', 4, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Creo que la educación virtual es una moda pasajera y la educación presencial es la única forma válida de aprender.', 4, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 4, 1);

INSERT INTO answers (string, levelId, languageId) VALUES ('', 4, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我认为社交媒体是一种浪费时间，我们应该断开与之的联系。', 4, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我认为社交媒体对于与朋友和家人保持联系非常有用。', 4, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我认为社交媒体对社会没有任何影响。', 4, 2);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 4, 2);

INSERT INTO answers (string, levelId, languageId) VALUES (N'我会建议建造更多工厂来创造就业机会。', 4, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我会提议增加公共交通和骑自行车的使用。', 4, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我会建议禁止机动车辆通行。', 4, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我会建议忽视污染问题。', 4, 2);

INSERT INTO answers (string, levelId, languageId) VALUES (N'我认为学校应该只教授基础的财务知识，其他由家长负责教育。', 4, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我认为学校不应该涉足青少年的财务教育。', 4, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我认为青少年应该自己学习财务管理，学校无需介入。', 4, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我认为学校应该通过课堂教学和实践活动来教授青少年有关财务管理的知识。', 4, 2);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 4, 2);

INSERT INTO answers (string, levelId, languageId) VALUES ('Creo que la inteligencia artificial no tendrá ningún efecto en el trabajo.', 5, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Creo que la inteligencia artificial hará que muchos trabajos sean obsoletos.', 5, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Creo que la inteligencia artificial creará más empleos de los que destruirá.', 5, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Creo que la inteligencia artificial solo beneficiará a grandes empresas.', 5, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 5, 1);

INSERT INTO answers (string, levelId, languageId) VALUES ('La educación es fundamental para el desarrollo personal y profesional.', 5, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('La educación es solo para quienes pueden pagarla.', 5, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('La educación no es importante en la sociedad actual.', 5, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('La educación solo es necesaria para ciertos trabajos.', 5, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 5, 1);

INSERT INTO answers (string, levelId, languageId) VALUES ('Creo que la globalización ha hecho que nuestra cultura sea más homogénea y menos diversa.', 5, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Creo que la globalización ha causado la pérdida de nuestra identidad cultural.', 5, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Creo que la globalización ha tenido un impacto mínimo en la cultura de nuestro país.', 5, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('Creo que la globalización ha enriquecido nuestra cultura al introducir nuevas ideas y perspectivas.', 5, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 5, 1);

INSERT INTO answers (string, levelId, languageId) VALUES (N'我认为人工智能会创造比消灭更多的工作。', 5, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我认为人工智能会导致许多工作过时。', 5, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我认为人工智能对工作没有任何影响。', 5, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我认为人工智能只会造福大公司。', 5, 2);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 5, 2);

INSERT INTO answers (string, levelId, languageId) VALUES (N'教育只是供有能力支付的人士使用。', 5, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'教育对于个人和职业发展至关重要。', 5, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'教育在当今社会中并不重要。', 5, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'教育只对某些职业必要。', 5, 2);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 5, 2);

INSERT INTO answers (string, levelId, languageId) VALUES (N'我认为环境保护是一种奢侈，只有经济发展好的国家才能实现。', 5, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我认为社会和经济发展比环境保护更为重要。', 5, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我认为环境保护对于社会和经济发展至关重要，因为健康的环境是可持续发展的基础。。', 5, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我认为环境保护只是政府的责任，个人无需关心。', 5, 2);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 5, 2);

INSERT INTO answers (string, levelId, languageId) VALUES ('La creatividad es un obstáculo para resolver problemas.', 6, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('La creatividad no tiene ninguna relevancia en la resolución de problemas.', 6, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('La creatividad solo es importante en el arte y la literatura.', 6, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('La creatividad es esencial para encontrar soluciones innovadoras.', 6, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 6, 1);

INSERT INTO answers (string, levelId, languageId) VALUES ('La tecnología no tiene ningún impacto en la sociedad.', 6, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('La tecnología puede impulsar cambios significativos en la sociedad.', 6, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('La sociedad determina el avance de la tecnología.', 6, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('La tecnología solo beneficia a unos pocos en la sociedad.', 6, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 6, 1);

INSERT INTO answers (string, levelId, languageId) VALUES ('La libertad de expresión es fundamental para el funcionamiento de una sociedad democrática, ya que garantiza la diversidad de opiniones y el debate público.', 6, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('La libertad de expresión es una amenaza para la estabilidad de la sociedad y debería ser restringida.', 6, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('La libertad de expresión es un privilegio reservado solo para unos pocos en la sociedad.', 6, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('La libertad de expresión no es relevante en una sociedad democrática.', 6, 1);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 6, 1);

INSERT INTO answers (string, levelId, languageId) VALUES (N'创造力只在艺术和文学中重要。', 6, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'创造力在解决问题中毫无意义。', 6, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'创造力对于找到创新性解决方案至关重要。', 6, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'创造力是解决问题的障碍。', 6, 2);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 6, 2);

INSERT INTO answers (string, levelId, languageId) VALUES ('科技只为社会中的少数人提供利益。', 6, 2);
INSERT INTO answers (string, levelId, languageId) VALUES ('科技对社会没有任何影响。', 6, 2);
INSERT INTO answers (string, levelId, languageId) VALUES ('社会决定科技的进步。', 6, 2);
INSERT INTO answers (string, levelId, languageId) VALUES ('科技可以推动社会的重大变革。', 6, 2);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 6, 2);

INSERT INTO answers (string, levelId, languageId) VALUES (N'我认为政府应该采取紧急措施来减缓气候变化并促进可持续发展。', 6, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我认为政府不应该介入气候变化问题，应该由市场自行解决。', 6, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我认为政府应该将重点放在经济发展上，而不是气候变化。', 6, 2);
INSERT INTO answers (string, levelId, languageId) VALUES (N'我认为政府应该把气候变化视为次要问题，因为有更紧迫的事务需要处理。', 6, 2);
INSERT INTO answers (string, levelId, languageId) VALUES ('I have no idea what this says', 6, 2);

INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES ('¿Cómo se llama?', 1, 1, 1);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES ('¿De dónde es usted?', 2, 1, 1);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES ('¿Cuándo come?', 3, 1, 1);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES (N'海，你好吗？', 4, 1, 2);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES (N'你吃饭了吗？', 5, 1, 2);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES (N'妈妈嘛马骂吗？', 6, 1, 2);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES ('¿Cómo se dice "hello" en español?', 7, 2, 1);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES ('¿Cuál es la forma correcta del verbo "comer" en la tercera persona del singular (él/ella)?', 8, 2, 1);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES ('¿Cuál es el color del cielo en un día soleado?', 9, 2, 1);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES (N'你想喝什么？', 10, 2, 2);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES (N'今天是星期几？', 11, 2, 2);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES (N'你喜欢吃什么水果？', 12, 2, 2);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES ('¿Qué actividad te gusta hacer en tu tiempo libre?', 13, 3, 1);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES ('¿Qué haces cuando tienes hambre en casa?', 14, 3, 1);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES ('¿Cómo prefieres viajar cuando visitas otro país?', 15, 3, 1);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES (N'在家里，你通常做什么活动？', 16, 3, 2);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES (N'你饿的时候会做什么？', 17, 3, 2);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES (N'当你去旅行时，你更喜欢怎么去？', 18, 3, 2);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES ('¿Cuál es tu opinión sobre el uso de las redes sociales en la sociedad actual?', 19, 4, 1);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES ('¿Qué medidas propondrías para reducir la contaminación en tu ciudad?', 20, 4, 1);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES ('¿Cuál es tu opinión sobre la educación virtual frente a la educación presencial?', 21, 4, 1);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES (N'你认为在当今社会使用社交媒体有何影响？', 22, 4, 2);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES (N'你会提出什么措施来减少你所在城市的污染？', 23, 4, 2);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES (N'你认为学校应该如何教授青少年有关财务管理的知识？', 24, 4, 2);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES ('¿Cómo crees que la inteligencia artificial impactará en el futuro del trabajo?', 25, 5, 1);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES ('¿Cuál es la importancia de la educación en la sociedad contemporánea?', 26, 5, 1);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES ('¿Cómo crees que la globalización ha afectado la cultura de tu país?', 27, 5, 1);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES (N'你认为人工智能对未来的工作会产生什么影响？', 28, 5, 2);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES (N'教育在当今社会中的重要性是什么？', 29, 5, 2);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES (N'你认为环境保护对于社会和经济发展有何重要性？', 30, 5, 2);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES ('¿Qué papel juega la creatividad en la resolución de problemas complejos?', 31, 6, 1);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES ('¿Cuál es la relación entre la tecnología y el cambio social?', 32, 6, 1);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES ('¿Cuál es la importancia de la libertad de expresión en una sociedad democrática?', 33, 6, 1);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES (N'创造力在解决复杂问题中扮演着怎样的角色？', 34, 6, 2);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES (N'科技与社会变革之间的关系是什么？', 35, 6, 2);
INSERT INTO [Questions] ([question], [answerId], [levelId], [languageId]) VALUES (N'你认为政府应该如何应对全球性挑战如气候变化？', 36, 6, 2);


INSERT INTO [TestResults] ([scores], [levelId], [languageId], [userId]) VALUES (80, 1, 1, 1);
INSERT INTO [TestResults] ([scores], [levelId], [languageId], [userId]) VALUES (75, 1, 1, 2);
INSERT INTO [TestResults] ([scores], [levelId], [languageId], [userId]) VALUES (90, 1, 2, 1);
