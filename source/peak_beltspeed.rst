===============
Peak Belt Speed
===============

Pandia Peak offers the functionality to set the conveyor belt speed manually OR fetch and set it dynamically via automatic HTTP requests to a server.

Here is a python code example of a simple Flask server endpoint that provides the current belt speed:

.. sourcecode:: python
   
   # note: CurrentBeltSpeed is in m/s
   @system.route('/getBeltSpeed')
   def getBeltSpeed():
      dict = { "BeltSpeed" : CurrentBeltSpeed }
      return jsonify(dict)

The response-content from the server that holds the current belt speed needs to be in JSON format with a "BeltSpeed" key/value pair. 
The belt speed unit is m/s.

The HTTP GET request that Pandia Peak sends is configurable in the GUI, where you can set the server's IPv4 address, Port and the endpoint name.
The requests are sent in a configurable rate (default: 5s) while measuring volume flow, so that the used belt speed is always up to date.

Here is an example of a HTTP GET request that Pandia Peak sends (depends on the aforementioned configuration) and the response with the required JSON "BeltSpeed" key/value pair:

.. http:get:: /getBeltSpeed

   Get the current belt speed in m/s.
   
   **Example request**:

   .. sourcecode:: http

      GET /getBeltSpeed HTTP/1.1
      Host: 192.168.2.100:5555
      Accept: application/json

   **Example response**:

   .. sourcecode:: http

      HTTP/1.1 200 OK
      Access-Control-Allow-Origin: *
      Content-Length: 18
      Content-Type: application/json
      Date: Tue, 06 Sep 2022 10:13:43 GMT
      Server: waitress

      {"BeltSpeed":0.1}

   **Example response-content**:

   .. sourcecode::

      {"BeltSpeed":0.1}
      {"BeltSpeed":0.218}
      {"BeltSpeed":1}

   :statuscode 200: No error
   :statuscode 404: Error