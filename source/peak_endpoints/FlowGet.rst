FlowGet
=======

.. http:get:: /v1/getCurrentVolumeFlow

   Gets the current total volume flow value in liters.
   
   **Example request**:

   .. sourcecode:: http

      GET /v1/getCurrentVolumeFlow HTTP/1.1
      Host: 192.168.2.103:5001
      Accept: text/html

   **Example response**:

   .. sourcecode:: http

      HTTP/1.1 200 OK
      Access-Control-Allow-Origin: *
      Content-Length: 10
      Content-Type: text/html; charset=utf-8
      Date: Mon, 25 Jul 2022 11:07:46 GMT
      Server: waitress

      {13.18492}

   **Example response-content**:

   .. sourcecode::

      {0.87890}
      {13.18492}
      {}

   :statuscode 200: No error
   :statuscode 404: Error

