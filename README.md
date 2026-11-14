# KATA5

#### - OBJETIVOS
La quinta kata introduce comunicación en tiempo real desde el lado servidor. El objetivo es
construir un servidor pequeño que permita crear o listar salas mediante HTTP y enviar mensajes
de chat mediante sockets o WebSocket.

#### - CÓMO COMPILAR Y EJECUTAR
Primeramente el grupo de contenedores debe estar levantado, segundo se debe de haber creado el paquete `jar` que permitirá ejecutar los comandos que lanza el hilo
y por último se tiene que runear tanto el main del servicio como del cliente. Recordar que los comandos que están en `/load-balancer/start.sh` solo se puede ejecutar si estamos
dentro del directorio `load-balancer`.

#### - DEPENDENCIAS Y VERSION DE JDK
- **Build System:** Maven
- **JDK:** openjdk-25
- **Dependencies:** Gson (librería) y Javalin (framework)

#### - ESTRUCTURA DE LA ENTREGA Y CLASES PRINCIPALES
- **Estructura:**
```
kata5/
├── factorial-client/
│   ├── src/
│   │   ├── main/
│   │   │   ├── java/
│   │   │   │   └── kata5/
│   │   │   │       └── Main.java
│   │   │   └── resources/
│   │   └── test/
│   └── pom.xml
├── factorial-service/
│   ├── src/
│   │   ├── main/
│   │   │   ├── java/
│   │   │   │   └── kata5/
│   │   │   │       ├── Main.java
│   │   │   │       └── Webservice.java
│   │   │   └── resources/
│   │   └── test/
│   └── pom.xml
├── fibonacci-client/
│   ├── src/
│   │   ├── main/
│   │   │   ├── java/
│   │   │   │   └── kata5/
│   │   │   │       └── Main.java
│   │   │   └── resources/
│   │   └── test/
│   └── pom.xml
├── fibonacci-service/
│   ├── src/
│   │   ├── main/
│   │   │   ├── java/
│   │   │   │   └── kata5/
│   │   │   │       ├── Main.java
│   │   │   │       └── Webservice.java
│   │   │   └── resources/
│   │   └── test/
│   └── pom.xml
├── load-balancer/
│   ├── check
│   ├── compose.yaml
│   ├── start.sh
│   └── webservice.conf
├── .gitignore
└── README.md
```
### - Clases Principales:

**`factorial-service`**
- **`Main`**: punto de entrada del servicio, arranca el servidor.
- **`Webservice`**: expone el endpoint que calcula el factorial.

**`fibonacci-service`**
- **`Main`**: punto de entrada del servicio, arranca el servidor.
- **`Webservice`**: expone el endpoint que calcula la serie de Fibonacci.

**`factorial-client`**
- **`Main`**: punto de entrada del cliente, realiza las peticiones al servicio de factorial.

**`fibonacci-client`**
- **`Main`**: punto de entrada del cliente, realiza las peticiones al servicio de Fibonacci.

**`load-balancer`**
- **`webservice.conf`**: configuración del balanceador que reparte las peticiones entre las instancias del servicio.
- **`compose.yaml`**: define y levanta los contenedores del servicio y del balanceador.
- **`start.sh`**: script de arranque del entorno.
- **`check`**: script de comprobación del funcionamiento.


#### - FLUJO DE GIT USADO
En esta práctica no se realizó ningún flujo de git. Todos los commits fueron realizados desde la propia rama de master.

Para clonar el repositorio se puede usar en la terminal del IntelliJ el comando `git clone`, pero también se puede hacer desde la propia interfaz antes de crear un proyecto.

## ENLACE AL VIDEO EXPLICATIVO
[https://youtu.be/UBGOnvGSxBQ](https://youtu.be/Be2fYIVtbaE)

En el video explicativo se muestra como se hizo la kata usando los conceptos aprendidos en clase.
