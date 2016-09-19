USE [AwfulInputs];

INSERT INTO [AwfulInput] ([ViewName])
VALUES
	('_AI_00001'),
	('_AI_00002'),
	('_AI_00003'),
	('_AI_00004'),
	('_AI_00005'),
	('_AI_00006'),
	('_AI_00007')

INSERT INTO [CategoryType] ([Name])
VALUES
	('Html Element'),
	('Input Data')

INSERT INTO [Category] ([Name], [CategoryTypeID])
VALUES
	/*1*/('input[type="button"]', 1),
	/*2*/('input[type="checkbox"]', 1),
	/*3*/('input[type="color"]', 1),
	/*4*/('input[type="date"]', 1),
	/*5*/('input[type="datetime"]', 1),
	/*6*/('input[type="datetime-local"]', 1),
	/*7*/('input[type="email"]', 1),
	/*8*/('input[type="file"]', 1),
	/*9*/('input[type="hidden"]', 1),
	/*10*/('input[type="image"]', 1),
	/*11*/('input[type="month"]', 1),
	/*12*/('input[type="number"]', 1),
	/*13*/('input[type="password"]', 1),
	/*14*/('input[type="radio"]', 1),
	/*15*/('input[type="range"]', 1),
	/*16*/('input[type="reset"]', 1),
	/*17*/('input[type="search"]', 1),
	/*18*/('input[type="submit"]', 1),
	/*19*/('input[type="tel"]', 1),
	/*20*/('input[type="text"]', 1),
	/*21*/('input[type="time"]', 1),
	/*22*/('input[type="url"]', 1),
	/*23*/('input[type="week"]', 1),
	/*24*/('select', 1),
	/*25*/('textarea', 1),
	/*26*/('button', 1),
	/*27*/('Phone Number', 2)

INSERT INTO [AwfulInput_Category] ([AwfulInputID], [CategoryID])
VALUES
	(1, 20),
	(1, 27),
	(2, 24),
	(2, 27),
	(3, 20),
	(3, 27),
	(4, 24),
	(4, 27),
	(5, 24),
	(5, 27),
	(6, 20),
	(6, 27),
	(7, 27)

