��    .      �  =   �      �  �   �  b   �  B     *   ^     �     �  9   �  ,   �  {        �     �     �     �  d   �     S  [   �  W   /  -   �  �   �  �   \	  +   �	     
  )   :
  !   d
  4   �
     �
     �
  s   �
  �   T  ^   �  <   ?    |  @   �  �   �  `   \  9   �  $   �          6  R   C  b   �     �  �      �   �  0   �  �  �  �   �  �   x  b     )   j     �     �  =   �  1   �  �   0     �     �     �  '     �   4  �   �  `   M  q   �  ,      �   M  �   �  0   q     �  )   �  !   �  -   	     7     I  �   Z  �     c   �  F   �  2  E  Q   x  �   �  n   m  ^   �  >   ;      z      �   V   �   t   �      h!  �   n!  �   K"  /   "#                	                         #         !            )      
                             '              -                &      (   ,             $   +       %   "              *      .                    A side effect of running tests is that it may also regenerate .PO files from the ``docs/`` folder. If you did not make any changes there, your should just ignore those changed files and revert them. After editing the .PO files, you can check the result by building the Dutch translations locally:: After importing the backup of your production system, simply run:: Clone DSMR-reader repository from Github:: Contents Copy development config:: Copy env vars template and generate a unique secret key:: Create virtualenv and install all packages:: DSMR-reader's test coverage should remain as high as possible. Running tests will also analyze the test coverage in detail. Developing with DSMR-reader Editing documentation Fake datalogger Initial data to develop with It will generate random data every second in a certain pattern and should be fine for basic testing. Just import it as you should on your RaspberryPi. Copy a database backup to ``/var/lib/postgresql/`` on your PC and import it:: Now check whether tests run well with all three database backends (this may take a while):: Now view the generated HTML in your browser by opening: ``docs/_build/html/index.html`` Open ``dsmrreader/settings.py`` and replace:: Please note that it only inserts unprocessed readings, so you'll still have to run the ``./manage.py dsmr_backend --run-once`` command to have the readings processed. Please note that you should not run any (backend) processes in your DSMR-reader development environment, until you've unlinked all external services. Run quick tests (with in-memory database):: Running DSMR-reader locally Set up MySQL (or MariaDB) test database:: Set up PostgreSQL test database:: Setting up a development environment in Ubuntu 18.04 System packages:: Tests and coverage The .PO files in ``docs/locale`` should be regenerated now. You can use ``poedit`` to view and translate the files. The application will be accessible on: ``http://localhost:8000/``. Any code changes you make will let the application reload automatically. The documentation is part of the repository and can be generated (automatically) with Sphinx:: The easiest way to run tests is to use the in-memory tests:: The test coverage should be visible in the terminal after running tests. There are detailed HTML pages available as well, after each test run, in ``coverage_report/html/index.html``. Just open it with your browser to view the test coverage of each file and line. There is a builtin command that can somewhat fake a datalogger:: This will remove all API keys and other links to externals systems, as well as reset the admin user credentials to ``admin / admin`` (user / password). To be honest, the best initial/fixture data is simply a backup of your own system in production. To test a single app within DSMR-reader, just append it:: To test all database backends, run:: Translating documentation Translations Translations are done using gettext and .PO files. Regenerate the .PO files with:: Try a check, output should be something like ``System check identified no issues (0 silenced).``:: With:: You can find the translations (.PO files) for the main application in ``dsmrreader/locales/``. To regenerate them, just execute the ``./tools/quick-test.sh`` script, as one of the tests checks translations. You can now view the documentation in your browser by accessing: ``http://127.0.0.1:10000``. Any changes you make will be reflected instantly in the browser, as Sphinx continuously checks for changed files. You can run the Django development server with:: Project-Id-Version: DSMR Reader
Report-Msgid-Bugs-To: Dennis Siemensma <github@dennissiemensma.nl>
PO-Revision-Date: 2020-11-15 00:44+0100
Last-Translator: Dennis Siemensma <github@dennissiemensma.nl>
Language: nl
Language-Team: Dennis Siemensma <github@dennissiemensma.nl>
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.0
X-Generator: Poedit 2.0.6
 Een mogelijk bijeffect van het draaien van tests is dat hiermee ook .PO-bestanden in de ``docs/`` map bijgewerkt worden. Als je daar geen wijzigingen in hebt gedaan, kun je die door de tests gewijzigde bestanden negeren. Nadat je de .PO-bestanden hebt bijgewerkt, kun je de resultaten bekijken door de Nederlandse variant van de documentatie lokaal te genereren:: Voer simpelweg het volgende uit, na het importeren van een backup uit je eigen productieomgeving:: Kloon DSMR-reader repository van Github:: Inhoudsopgave Kopieer de ontwikkel config:: Kopieer env vars template en genereer een unieke secret key:: Maak virtualenv aan en installeer alle packages:: DSMR-reader's test dekking zou zo hoog mogelijk moeten blijven. Het draaien van tests zorgt er ook voor dat de test dekking in detail geanalyseerd wordt. Ontwikkelen met DSMR-reader Documentatie bijwerken Nep datalogger Initiele gegevens om mee te ontwikkelen Deze genereert elke seconde willekeurige gegevens in een bepaald patroon en is vaak meer dan afdoende voor simpele testdoeleinden. Importeer deze zoals je dat ook zou doen op je RaspberryPi. Kopieer een database-backup naar ``/var/lib/postgresql`` op je PC en importeer deze met:: Controleer nu of de tests goed draaien met alle drie de database-backends (dit kan even duren):: Bekijk nu de gegenereerde HTML in je browser door het volgende bestand te openen: ``docs/_build/html/index.html`` Open ``dsmrreader/settings.py`` en vervang:: Hiermee worden alleen onverwerkte metingen aangemaakt. Je zult ze nog steeds moeten verwerken door ``./manage.py dsmr_backend --run-once`` uit te voeren. Voorkom dat je (achtergrond)processen draait in je lokale DSMR-reader ontwikkelomgeving, totdat je alle externe diensten hebt ontkoppeld. Draai de snelle tests (via in-memory database):: DSMR-reader lokaal draaien Stel MySQL (of MariaDB) testdatabase in:: Stel PostgreSQL testdatabase in:: Ontwikkelomgeving inrichten voor Ubuntu 18.04 Systeempackages:: Tests en dekking De .PO-bestanden in ``docs/locale`` zouden nu opnieuw gegenereerd moeten worden. Je kunt het programma ``poedit`` gebruiken om de bestanden te bekijken en te vertalen. De applicatie is nu bereikbaar op: ``http://localhost:8000/``. Elke codewijziging die je doet, wordt automatisch doorgevoerd en herlaadt de applicatie. De documentatie is onderdeel van de repository en kan (automatisch) gegenereerd worden via Sphinx:: De makkelijkste manier om tests te draaien is via de in-memory tests:: De test dekking zou na het draaien van tests zichtbaar moeten zijn in de terminal. Er zijn tevens gedetaileerde HTML-pagina's beschikbaar in ``coverage_report/html/index.html``, na het draaien van tests. Je kunt deze openen met je browser om de test dekking in detail te zien per bestand en per regel code. Er is een ingebouwd command voor een soort van datalogger die nepdata genereert:: Dit verwijdert alle API-keys en andere koppelingen naar externe systemen. Tevens wordt de admin-gebruiker gereset naar ``admin / admin`` (gebruiker / wachtwoord). De beste gegevens om mee te ontwikkelen zijn eerlijk gezegd simpelweg gegevens uit je eigen productieomgeving. Om een enkele app binnen DSMR-reader te testen, geef je deze simpelweg als extra argument op:: Om alle database-backends te testen voer je het volgende uit:: Documentatie vertalen Vertalingen Vertalingen verlopen via .PO-bestanden met gettext. Hergenereer de .PO-bestanden met:: Probeer het volgende, de output moet iets zijn in de trend van ``System check identified no issues (0 silenced).``:: Met:: Je kunt de vertalingen (.PO-bestanden) voor de hoofdapplicatie vinden in ``dsmrreader/locales/``. Om ze te hergenereren voer het ``./tools/quick-test.sh`` script uit, zodat een van de tests de vertalingen opnieuw checkt. Je kunt nu de documentatie bekijken in je browser op de volgende link: ``http://127.0.0.1:10000``. Wijzigingen die je doorvoert worden direct automatisch bijgewerkt en getoond in je browser, waar Sphinx voor zorgt. Je kunt de Django-ontwikkelserver draaien met:: 