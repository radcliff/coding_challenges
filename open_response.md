###Explain how HTTP works in detail. Use diagrams.
	HTTP works on a response/request cycle. The client sends an HTTP request to the server, for which the server sends a response. An HTTP request can be in the form of a GET, POST, or DELETE. (Also PUT and PATCH).
	
	CLIENT  request-> SERVER
	CLIENT <-response SERVER
	
	Meta information contained in the head of the HTTP request/response determines the HTTP verb that is being used. The server will use this information to route the request to a particular resource, and then respond according. Data is passed between client and server in the request/response body and params.


###Explain how APIs work in detail. Use diagrams.
	An API is a server that is set up to listen on a particular port for client requests. When a request is received the API interperets the data and routes the request to the specified resource. 
	
	Typically, for a GET request to an API, the server will query a database and return some data/an object to the client in a response. A POST request might be used to create, or update data on the server side. The server is responsible for hitting the database and responding with the correct data for the request.
	
	CLIENT  request-> SERVER query-> DATABASE
	CLIENT <-response SERVER <-data  DATABASE
	
###Explain how method_missing works. Show an example.
	Method_missing is returned when a method has not been defined in the class or in a class that the class inherits from.

###What is the purpose of yield? Show an example.
	If a method is passed a block that contains a function, a yield can be used as a placeholder for what the passed block returns. The returned value is then available to the method.
	
	def method { block }
		something
		yield
		something
	end

	Rails uses a yield to render individual views within a larger layout that is consistent through all pages. In this case, the yield is the value of the rendered html inserted in the the layout view.  

###Explain how MVC works. Why is it beneficial? Use diagrams.
	"MVC" stands for Model, View, Controller. An MVC architecture can be useful to an application because it helps with separation of concerns. In a large application, having lots of different types of logic in one place can be confusing and hard to work with, and could also affect scalability. Separating out, or modularizing, the parts of an application make it more manageable.
	
	Models are responsible for handling data within the application. Models are also where class methods are defined.
	
	Views are responsible for rendering html in the client.
	
	Controllers are responsible for making data from the Models accessible to the Views, as well as some logic. Controllers also handle user input/data from the views and make it available to the models.
	
	MODEL <==> CONTROLLER <==> VIEW