class Tarea {
  String titulo;
  String descripcion;
  String completa;

  Tarea(this.titulo, this.descripcion, {this.completa = 'X'});

  void tareaCompleta() {
    completa = '✓';
  }

  @override
  String toString() {
    return '\n-Tarea: $titulo, \nDrescripion:$descripcion, \nCompletada:$completa';
  }
}

class ListaDeTareas {
  List<Tarea> tareas = [];

  void agregarTareas(Tarea tarea) {
    tareas.add(tarea);
    print('Tarea agregada:${tarea.titulo}');
  }

  void eliminarTarea(String titulo) {
    tareas.removeWhere((tarea) => tarea.titulo == titulo);
    print('\nTarea Eliminada:$titulo');
  }

  void tareaCompletada(String titulo) {
    for (var tarea in tareas) {
      if (tarea.titulo == titulo) {
        tarea.tareaCompleta();
        print('\nTarea Completa:$titulo');
        break;
      }
    }
  }

  void verTareas() {
    for (var tarea in tareas) {
      print(tarea);
    }
  }
}

void main() {
  ListaDeTareas lista = ListaDeTareas();

  lista.agregarTareas(
      Tarea('Estudiar', 'Aprender a relizar ejercicios de cinematica'));
  lista.agregarTareas(Tarea('Proyecto de Lenguajes de Programacion',
      'Lenguaje base de la clases LDP para el desarrollo de apps'));
  lista.agregarTareas(Tarea('Ensayo de las funciones de un Sistema Operativo',
      'El modelo de aprendizaje para investigar y aprender mas a fondo sobre los sistemas Operativos'));

  print('\nLista de tareas:');
  lista.verTareas();

  lista.tareaCompletada('Proyecto de Lenguajes de Programacion');
  print('\n LISTA ACTULIZADA:');
  lista.verTareas();

  lista.eliminarTarea('Ensayo de las funciones de un Sistema Operativo');

  print('\nLISTA LUEGO DE ELIMINAR UN ELEMENTO');
  lista.verTareas();
}
