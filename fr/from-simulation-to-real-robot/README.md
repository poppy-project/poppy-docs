# Passer du robot Poppy simulé au robot physique

Un élément-clé du projet Poppy est de vous donner la possibilité de facilement passer d'un robot simulé (en utilisant CoppeliaSim par exemple) à un vrai robot. C'est assez utile lorsque vous :

* Développez une expérimentation dans laquelle vous pouvez tout configurer à partir de la simulation, pour la lancer ensuite sur le robot physique.
* Faites travailler vos élèves dans un premier temps sur des ordinateurs grâce à une simulation pour ensuite les faire essayer leurs travaux sur un robot physique partagé

Cependant, même si c'est fait de façon à ce que passage d'un plan à l'autre soit aisé, il y a quelques points à assimiler. Une des différence majeure est que lorsque vous travaillez via la simulation, tout se fait depuis votre ordinateur alors que quand vous utilisez une robot physique, le logiciel (par exemple les Python Notebooks) tout se fait depuis le robot.