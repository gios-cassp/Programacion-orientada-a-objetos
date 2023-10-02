//*parte 2 programacion orientada a objetos//
/*
*Crear una Clase llamada Aviones y a partir de esta clase realizar
*lo siguiente:*/
/*
!a) Agregarle 3 atributos a la clase principal
!b) Agregarle 2 metodos a la clase principal
?c) Crear 3 herencias
?d) Agregarle como minimo un atributo diferente a cada herencia
?e) Agregarle como minimo un metodo diferente a cada herencia 
*f) Crear polimorfismo*/


//*Clase principal Aviones

class Aviones{

    //!Atributos de la clase principal

    constructor(modelo, capacidadPasajeros, velocidadMaxima){
        this.modelo = modelo;
        this.capacidadPasajeros = capacidadPasajeros;
        this.velocidadMaxima = velocidadMaxima;
    }

    //!Metodo 1

    despegar(){
        console.log(`los aviones ${this.modelo} han despegado`);
    }

    //!Metodo 2

    aterrizar(){
        console.log(`Los aviones ${this.modelo} han aterrizado`) ;
    }
}

const modeloDeAviones = new Aviones('Modelos de los aviones', 301, 911)
modeloDeAviones.despegar()

//?Herencia 1: AvionComercial

class AvionComercial extends Aviones{
    constructor (modelo, capacidadPasajeros, velocidadMaxima , aeroLinea ){
        super(modelo, capacidadPasajeros, velocidadMaxima);
        this.aeroLinea = aeroLinea;
    }

    anunciar(){
        console.log(`Bienvenidos a bordo del avión ${this.modelo} de ${this.aerolinea}`);
    }
}

//?Herencia 2 AvionCarga

class AvionCarga extends Aviones {
    constructor (modelo, capacidadPasajeros, velocidadMaxima, cargaMaxima){
        super(modelo, capacidadPasajeros, velocidadMaxima );
        this.cargaMaxima = cargaMaxima;
    }

    cargar(carga){
        if (carga <= this.cargaMaxima) {
            console.log(`${this.modelo}, ha recibido una nueva carga con un peso de ${carga}`);
        } else{
            console.log(`la carga excede la capacidad maxima del avion ${this.modelo}`);
        }
    }
}

//?Herencia 3 AvionPrivado

class AvionPrivado extends Aviones {
    constructor (modelo,capacidadPasajeros,velocidadMaxima, propietario) {
        super(modelo,capacidadPasajeros,velocidadMaxima );  
        this.propietario = propietario;
    }

    volarConPropietario(){
        console.log (`El avion privado ${this.modelo} está en vuelo con su propietario`);
    }
}

//*Polimorfismo

function realizarOperacionesEspeciales (Aviones){
    if (Aviones instanceof AvionComercial){
        console.log(`Realizar operacion especial para el avion comercial ${this.modelo}`);
    } else if(Aviones instanceof AvionCarga) {
        console.log(`Realizar operacion especial para el avion de carga ${this.modelo}`);
    } else if(Aviones instanceof AvionPrivado){
        console.log(`Realizar operacion especial para el avion privado ${this.modelo}`);
    }
}

//? Instancias de las clases

const avionComercial = new AvionComercial('Avianca 737', 150, 900, 'AirlineX');
const avionCarga = new AvionCarga('Airbus 330', 2, 700, 10000 );
const avionPrivado = new AvionPrivado('Boeing 747', 4, 200, 'Peter Parker');

//* Llamar metodos y demostrar el polimorfismo

avionComercial.anunciar();
avionCarga.cargar(8000);
avionPrivado.volarConPropietario();

realizarOperacionesEspeciales(avionComercial);
realizarOperacionesEspeciales(avionCarga);
realizarOperacionesEspeciales(avionPrivado);
