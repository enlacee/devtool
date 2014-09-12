# velearning  = course-subscriber :
git : git@git.beeznest.com:icpna-course-subscriber.git

#doctrine
php app/console doctrine:database:create = crea la base de datos de symphony actual configurado.

php app/console doctrine:generate:entities Application/SubscriberBundle/Entity/Log
php app/console doctrine:generate:entities Application


# generar base de datos | crear base de datos
http://symfony.com/doc/current/book/doctrine.html
php app/console doctrine:schema:update --force

# doctrine 
http://symfony.com/doc/current/book/doctrine.html

# new comment



#CREAR TABLA EN DOCTRINE symphony (ingresa doctrine te guia)
php app/console generate:doctrine:entity
#luego genera script
php app/console doctrine:schema:update --dump-sql