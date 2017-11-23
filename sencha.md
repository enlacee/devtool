### sencha touch doc


![layout util para mobile](http://docs.sencha.com/touch/2.3.1/#!/guide/layouts)


### create application sencha CMD
	cd /home/anb/sites/acopitan/sencha/app3
	sencha -sdk /home/anb/sites/acopitan/sencha/touch-2.4.2 generate app MyApp3 /home/anb/sites/acopitan/sencha/app3


### create server

	sencha web start
	sencha generate controller Main


### code
	// selector
	var myForm = Ext.ComponentQuery.query('formpanel')[0];
