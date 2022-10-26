
-- 1. ¿Cuál es el nombre aeropuerto que ha tenido mayor movimiento durante el año?
SELECT * FROM vuelo;
SELECT * FROM aeropuertos;

SELECT "NOMBRE_AEROLINEA",count("ID_MOVIMIENTO") FROM vuelo AS V
LEFT JOIN aeropuertos ae
ON "v"."ID_AEROPUERTO" = "ae"."ID_AEROPUERTO"
GROUP BY "NOMBRE_AEROLINEA";

-- R. En está ocación tenemos que tanto Benito Juarez como La Paz son los aeropuertos con mayor movimientos en el año.

-- 2. ¿Cuál es el nombre aerolínea que ha realizado mayor número de vuelos durante el año?
SELECT * FROM vuelo;
SELECT * FROM aerolíneas;

SELECT "NOMBRE_AEROLINEA",count("ID_MOVIMIENTO") FROM vuelo AS V
LEFT JOIN aerolíneas ae
ON "v"."ID_AEROLINEA" = "ae"."ID_AEROLINEA"
GROUP BY "NOMBRE_AEROLINEA";

-- R.- las Aerolineas que comparten el mayor número de vuelos son Aeromar e Interjet con un total de 3 vuelos cada uno. 

-- 3.-¿En qué día se han tenido mayor número de vuelos?

SELECT "DIA",count(*) FROM vuelo
GROUP BY "DIA";

-- R. El día con mayor número de vuelos fue el 02/mayo/2021, con un total de 6 vuelos 

-- 4.- ¿Cuáles son las aerolíneas que tienen más de 2 vuelos por día?
SELECT * FROM vuelo;
SELECT * FROM aerolíneas;

SELECT "NOMBRE_AEROLINEA","DIA",count("ID_MOVIMIENTO") AS "VIAJE" FROM vuelo
LEFT JOIN aerolíneas aero
ON "vuelo"."ID_AEROLINEA" = "aero"."ID_AEROLINEA"
GROUP BY "NOMBRE_AEROLINEA","DIA";

-- R. No hay aerolineas que tengas mas de 3 vuelos por día, la cantidad máxima es de 2 vuelos por día 
-- y las Aerolineas que cumplen con estod dos vuelos por día son: Aeromar,Volaris e Interjet