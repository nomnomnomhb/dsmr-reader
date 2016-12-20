��          �               \  3   ]     �  	   �     �  K  �  m   �     h  i   v  
   �     �     �     �  ,     D   :  E     �   �     U     f  |   {  �  �  /   |     �  	   �     �  |  �  z   C	     �	  r   �	     >
  	   N
     X
     d
  ,   v
  R   �
  P   �
  k   G     �     �  z   �   (using the ``requests`` library available on PIP):: API API calls Authentication Besides allowing the API to listen for requests, you will also need use the generated API Auth Key. It can be found on the same page as in the screenshot above. The configuration page will also display it, but only partly. Feel free to alter the API Auth Key when required. The application initially randomly generates one for you. By default the API is disabled in the application. You may enable it in your configuration or admin settings. Configuration Data: ``telegram`` (as raw string containing all linefeeds ``\n``, and carriage returns ``\r``, as well!) Enable API Example Examples Method: ``POST`` POST ``/api/v1`` ``/datalogger/dsmrreading`` Status code returned: ``HTTP 200`` on success, any other on failure. The application has a simple, one-command API for remote dataloggers. This allows you to insert a raw telegram, read from your meter remotely, into the application as if it was read locally using the serial cable. Using ``cURL``:: Using ``requests``:: You should pass it in the header of every API call. The header should be defined as ``X-AUTHKEY``. See below for an example. Project-Id-Version: DSMR Reader 1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-12-20 00:22+0100
PO-Revision-Date: 2016-12-20 00:23+0100
Last-Translator: Dennis Siemensma <dsmr@dennissiemensma.nl>
Language: nl
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 (met de ``requests`` tool beschikbaar in PIP):: API API calls Autorisatie Naast het inschakelen van de API zul je ook een (automatisch) gegenereerde API autorisatiesleutel moeten gebruiken. Deze kun je terugvinden op dezelfde pagina als in bovenstaand screenshot. Op de configuratiepagina staat de sleutel ook, maar slechts ten delete. Pas overigens gerust de API autorisatiesleutel naar wens aan. De applicatie genereert initieel (eenmalig) een voor je. Standaard is de API in de applicatie uitgeschakeld. Je kunt deze inschakelen in het configuratiescherm of beheerderpaneel. Configuratie Data: ``telegram`` (als een ruwe tekenreeks inclusief zowel alle regeleindes ``\n`` als 'carriage returns' ``\r``) API inschakelen Voorbeeld Voorbeelden Methode: ``POST`` POST ``/api/v1`` ``/datalogger/dsmrreading`` Status code resultaat: ``HTTP 200`` wanneer succesvol, elke andere code bij falen. De applicatie heeft een eenvoudige, enkele API-call voor dataloggers op afstand. Dit staat je toe om een ruwe telegram aan de applicatie door te geven, wanneer je deze op afstand uitleest. Met ``cURL``:: Met ``requests``:: Je moet deze gebruiken voor elke API call die je uitvoert. De header heet ``X-AUTHKEY``. Zie hieronder voor een voorbeeld. 