VolumeStart
===========

.. _VolumeStart:

.. http:get:: /v1/startVolumeMeasurement

   Starts the volume measurement. Requires that the system is activated and set up via GUI.
   
   **Example request**:

   .. sourcecode:: http

      GET /v1/startVolumeMeasurement HTTP/1.1
      Host: 192.168.2.103:5001
      Accept: text/html

   **Example response**:

   .. sourcecode:: http

      HTTP/1.1 200 OK
      Access-Control-Allow-Origin: *
      Content-Length: 4
      Content-Type: text/html; charset=utf-8
      Date: Mon, 25 Jul 2022 11:07:46 GMT
      Server: waitress

      {OK}

   **Example response-content**:

   .. sourcecode::

      {OK}
      {Failed due to network error}
      {Failed due to incomplete system setup}

   :statuscode 200: No error
   :statuscode 404: Error

