# Evaluacion-practica-Matias-Morzilli
Necesitamos diseñar una base de datos relacional para almacenar información sobre un
sistema que administra notas de texto. El interés primario es poder lograr que un usuario
en particular pueda gestionar de cero muchas notas.

En el caso de los usuarios, se necesita registrar el nombre y un e-mail que los identifique.
Además es importante conocer qué nota es la que fue gestionada (creada, modificada y/o
eliminada) por dicho usuario. Ahora bien, una nota solo puede ser gestionada por un
único usuario y para la misma necesitamos registrar un título (el cual no debe superar los
100 caracteres), una fecha de creación, la fecha de la última modificación, una
descripción (es decir, la nota en sí), un mecanismo para identificar si dicha nota puede
ser o no eliminada una vez que sea creada, y por último nos piden que cada nota debe
estar asociada a una o varias categorías, es decir, una categoría puede contener de cero a
muchas notas. Por ejemplo: la categoría música almacenará si existen, todas las notas
que poseen dicha categoría.
