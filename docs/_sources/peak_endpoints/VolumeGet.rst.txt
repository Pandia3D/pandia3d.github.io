VolumeGet
=========

.. http:get:: /v1/getCurrentVolume

   Gets the current volume value in liters.
   
   **Example request**:

   .. sourcecode:: http

      GET /v1/getCurrentVolume HTTP/1.1
      Host: 192.168.2.103:5001
      Accept: text/html

   **Example response**:

   .. sourcecode:: http

      HTTP/1.1 200 OK
      Access-Control-Allow-Origin: *
      Content-Length: 9
      Content-Type: text/html; charset=utf-8
      Date: Mon, 25 Jul 2022 11:07:46 GMT
      Server: waitress

      {0.87890}

   **Example response-content**:

   .. sourcecode::

      {0.87890}
      {13.18492}
      {}

   :statuscode 200: No error
   :statuscode 404: Error

