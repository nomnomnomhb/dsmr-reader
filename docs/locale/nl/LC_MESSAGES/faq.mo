��    .      �  =   �      �  0   �  )   "  9   L  1   �  '   �  %   �  h     9   o    �  p  )     �  �   �  �   P	     
    !
  �   4  �   �    �     �     �      �           0  9   Q  �  �  e   0  <  �  �   �  �   �  1   m     �  �   �      �  #   �  o   �  "   P  �   s  �     �   �  	  �  =   �  �   �  �   _  ^     C   s  �  �  ;   W  0   �  5   �  1   �  '   ,  '   T  s   |  E   �  �  6  ~  �  '   A!  �   i!  �   "     �"    �"  �   $  �   �$    �%  %   �&     �&     �&     '  %   &'  4   L'  �  �'  �   L)  f  �)  �   G+  �   �+  4   �,     %-    B-  2   O.  &   �.  �   �.  5   */  �   `/  �   0    �0  ?  �1  H   �2  �   83  �   �3  ]   �4  C   �4        -          +                     .      &            '                    #   "                           ,      *                  )              (   	       !                  
         %         $           *How can I link my Dropbox account for backups?* *How can I link my mindergas.nl account?* *How can I propose a feature or report a bug I've found?* *How do I obtain my API key for NotifyMyAndroid?* *How do I obtain my API key for Prowl?* *How do I setup usage notifications?* *I've adjusted my energy prices but there are no changes! How can I regenerate them with my new prices?* *Which services for sending notifications are supported?* After you have downloaded NotifyMyAndroid and signed up for an account you should be able to `login to your account <https://www.notifymyandroid.com/index.jsp>`_. Now go to "`My Account <https://www.notifymyandroid.com/account.jsp>`_", you should see an overview of your current API keys if you have any. To create an API key for the DSMR-reader, please click **"Generate New Key"**. After you have downloaded Prowl and signed up for an account you should be able to `login to your account <https://www.prowlapp.com/login.php>`_. Now go to "`API Keys <https://www.prowlapp.com/api_settings.php>`_", you should see an overview of your current API keys if you have any. To create an API key for the DSMR-reader, input a name and click **"Generate Key"**. Apply any database migrations. Before updating, **please make sure you have a recent backup of your database**! :doc:`More information about backups can be found here<application>`. Choose the following options: (1) **Dropbox API** and (2) **App folder**. Then enter a name for your app (3), this will also be used as directory name within the Apps-folder of your Dropbox. Clear any caches. Copy the authentication token generated and paste in into the DSMR-reader settings for the Mindergas.nl-configuration. Obviously the export only works when there are any gas readings at all and you have ticked the 'export' checkbox in the Mindergas.nl-configuration as well. Copy the generated access token to the DSMR-reader settings for the Dropbox-configuration. The DSMR-reader application should sync any backups created shortly. Currently, two mobile platforms are supported: Android and iOS. The supported app for Android is `NotifyMyAndroid <https://www.notifymyandroid.com>`_. The supported app for iOS is `Prowl <https://www.prowlapp.com>`_. DSMR (and your energy supplier) always read both high and low tariff from your meter. It's possible however that you are only paying for a single tariff. In that case your energy supplier will simply merge both high and low tariffs to make it look like you have a single one. Dropbox: Automated backup sync Feature/bug report Frequently Asked Questions (FAQ) GIT pull (codebase update). How can I update my application? I only pay for a single electricity tariff but I see two! In the DSMR-reader settings for the Usagenotifications, tick the Send Notifications checkbox and select the notification service you want to use. Then copy the API key from the notification service and paste in into the the textbox for the API key. When you save these settings, your first notification should be sent after midnight. Don't worry, the notification will be sent with low priority and will not wake you up. It will make sure to check, fetch and apply any changes released. Summary of deployment script steps: Make sure you either have NotifyMyAndroid or Prowl installed on your smartphone. If you don't, visit your platforms app store to download the app and sign up for an account. Then, make sure to get your API key from the notificationservice that you prefer. For instruction on obtaining the API key, please read below. Make sure you have a Dropbox-account or sign up for one. Now go to `Dropbox Apps <https://www.dropbox.com/developers/apps>`_ and click **"Create app"** in top right corner. Make sure you have a Mindergas.nl-account or `signup for one <https://www.mindergas.nl/users/sign_up>`_. Now go to "`Meterstand API <https://www.mindergas.nl/member/api>`_" and click on the button located below **"Authenticatietoken"**. Mindergas.nl: Automated gas meter position export PIP update requirements. Please note that due to policies of mindergas.nl it's not allowed to retroactively upload meter positions using the API. Therefor this is not supported by the application. You can however, enter them manually on their website. Recalculate prices retroactively Reload Gunicorn application server. Statistics for each day are generated once, the day after. However, you can flush your statistics by executing: Sync static files to Nginx folder. The app should be created in developer-mode. You can generate an access token for yourself by clicking the **"Generate"** button somewhere below. The application will delete all statistics and (slowly) regenerate them in the background. Just make sure the source data is still there. The version you are running is always based on the 'latest' version of the application, called the `master` branch. Every once in a while there may be updates. Since ``v1.5`` you can also easily check for updates by using the application's Status page. This application displays separate tariffs by default, but supports merging them to a single one as well. Just make sure that you apply the **same price to both electricity 1 and 2** and enable the option ``Merge electricity tariffs`` in the frontend configuration. Usage notification: Daily usage statistics on your smartphone When a new key is generated, you will see it immediatly. Your key is listed like in the screenshot below (the red box marks your API key). You can update your application to the latest version by executing **deploy.sh**, located in the root of the project. Make sure to execute it while logged in as the ``dsmr`` user:: `Just create a ticket at Github <https://github.com/dennissiemensma/dsmr-reader/issues/new>`_. ``./manage.py dsmr_stats_clear_statistics --ack-to-delete-my-data`` Project-Id-Version: DSMR Reader 1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-12-06 22:36+0100
PO-Revision-Date: 2016-12-20 14:51+0100
Last-Translator: Jeroen Peters <jeroenpeters1986@gmail.com>
Language-Team: Dennis Siemensma <dsmr@dennissiemensma.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
Language: nl
X-Generator: Poedit 1.8.7.1
 *Hoe kan ik mijn Dropbox-account koppelen voor de backups?* *Hoe kan ik mijn mindergas.nl-account koppelen?* *Hoe kan ik een verzoek indienen of een fout melden?* *Hoe haal ik de API key op voor NotifyMyAndroid?* *Hoe haal ik de API key op voor Prowl?* *Hoe stel ik verbruiksnotificaties in?* *Ik heb zojuist mijn energieprijzen aangepast, maar ik zie geen verschil! Hoe kan ik de nieuwe prijzen doorvoeren?* *Welke services voor het sturen van notificaties worden ondersteund?* Nadat je NotifyMyAndroid hebt gedownload en een account hebt aangemaakt zou je moeten kunnen `inloggen op je account <https://www.notifymyandroid.com/index.jsp>`_. Ga nu naar "`My Account <https://www.notifymyandroid.com/account.jsp>`_" om een overzicht van je account de API keys te krijgen als je deze al hebt. Om een API key voor de DSMR-reader te genereren klik je op **"Generate New Key"**. Nadat je Prowl hebt gedownload en een account hebt aangemaakt zou je moeten kunnen `inloggen op je account <https://www.prowlapp.com/login.php>`_. Ga nu naar "`API Keys <https://www.prowlapp.com/api_settings.php>`_" om een overzicht van je API keys te krijgen als je deze al hebt. Om een API key voor de DSMR-reader te genereren geef je een naam op en klik je op **"Generate Key"**. Past openstaande databasemigraties toe. Voordat je bijwerkt, **zorg ervoor dat je in ieder geval een recente back-up van je database hebt**! :doc:`Meer informatie over back-ups kun je hier vinden<application>`. Kies de volgende opties:  (1) **Dropbox API** en (2) **App folder**. Voer vervolgens een naam voor je app in (3), deze wordt ook gebruikt als naam van de submap binnen je Apps-folder in Dropbox. Gooit de cache leeg. Kopieer de gegenereerde authenticatietoken in de DSMR-reader instellingen onder Mindergas.nl-configuratie. Vanzelfsprekend werkt deze feature alleen wanneer er gas gemeten wordt, en wanneer je de optie 'Exporteer gegevens naar MinderGas' aangevinkt hebt in dezelfde configuratie. Kopieer de gegenereerde toegangstoken naar de DSMR-reader instellingen onder Dropbox-configuratie. DSMR-reader zou vrij vlot gemaakte backups moeten uploaden naar je Dropbox-account. Op dit moment worden twee platforms ondersteund: Android en iOS. De ondersteunde app voor Android is `NotifyMyAndroid <https://www.notifymyandroid.com>`_. De ondersteunde app voor iOS is `Prowl <https://www.prowlapp.com>`_. DSMR (en je energieleverancier) lezen altijd zowel hoog als laag tarief van je meter uit. Het is desondanks mogelijk dat je betaalt voor slechts één tarief. In dat geval voegt jouw energieleverancier het hoge en lage tarief samen zodat het lijkt alsof je een enkel tarief hebt. Dropbox: Automatisch backups uploaden Verzoek/fout melden Veelgestelde vragen (FAQ) GIT pull (codebase bijwerken). Hoe kan ik mijn applicatie bijwerken? Ik betaal voor een enkel tarief maar ik zie er twee! In de DSMR-reader instellingen voor de Verbruiksnotificaties zet je een vinkje bij Stuur Notificaties en selecteer daaronder welke notificatieservice je wilt gebruiken. Kopieeër daarna de API key van de notificatieservice en plak deze in het tekstveld voor de API key. Als je deze instellingen opslaat zul je na middernacht je eerste notificatie ontvangen. Geen nood, de notificatie wordt altijd verstuurd met lage prioriteit, deze maakt je dus niet wakker. Dit zorgt ervoor dat alle wijzigingen op een juiste volgorde worden binnengehaald en toegepast. Een overzicht van wat dit uitrol-script exact doet: Zorg ervoor dat je NotifyMyAndroid of Prowl hebt geïnstalleerd op je smartphone. Als dat niet het geval is, bezoek dan de app store van je platform, download de gewenste app en maak daarvoor een account. Daarna haal je de API key voor de notificatieservice die je wilt gebruiken op. Om te lezen hoe dat werkt, lees dan de instructies bij de volgende kopjes. Zorg allereerst dat je een Dropbox-account hebt. Ga vervolgens naar `Dropbox Apps <https://www.dropbox.com/developers/apps>`_ en klik op **"Create app"** rechtsbovenin. Zorg ervoor dat je een mindergas.nl-account hebt of `registreer je op hun website <https://www.mindergas.nl/users/sign_up>`_. Ga nu naar "`Meterstand API <https://www.mindergas.nl/member/api>`_" en klik op de knop onder het kopje **"Authenticatietoken"**. Mindergas.nl: Automatisch gasmeterstanden exporteren Update PIP afhankelijkheden. N.B.: Wegens het beleid van mindergas.nl is het niet toegestaan om met terugwerkende kracht meterstanden door te geven via de API. De applicatie ondersteunt dat om die reden niet. je kunt oude meterstanden echter wel via hun website handmatig invoeren, indien gewenst. Prijzen opnieuw berekenen met terugwerkende kracht Ververst de Gunicorn-applicatieserver. Dagstatistieken worden dagelijks eenmalig gegenereerd. Het is echter wel mogelijk om deze te resetten door het volgende te doen: Synchroniseert statische bestanden naar de Nginx map. The app is als het goed is nu aangemaakt in developer-modus. Je kunt nog een toegangstoken genereren door op de knop **"Generate"** te klikken, die verderop onderaan de pagina staat. De applicatie verwijdert alle statistieken en genereert ze (langzaam) weer op de achtergrond. Zorg er wel voor dat alle brongegevens intact zijn. De versie die je draait is altijd gebaseerd op de 'laatste' versie van de applicatie, ook wel de `master` branch genoemd. Met enige regelmaat zijn er updates beschikbaar. Sinds ``v1.5`` kun je dit ook eenvoudig controleren op de Status-pagina van de applicatie. Deze applicatie weergeeft standaard gescheiden tarieven, maar heeft wel ondersteuning om ze samen te voegen (net zoals je energieleverancier doet). Zorg er wel voor dat je **dezelfde prijs invult bij hoog en laag tarief voor elektriciteit** en dat je de optie ``Voeg tarieven samen`` aanzet in de interfaceconfiguratie. Verbruiksnotificaties: Dagelijkse verbruiksstatistieken op je smartphone Als er een nieuwe key is gegenereerd, zie je deze direct. De key is te vinden zoals in onderstaande screenshot (er staat een rood kader om de key). Je kun je applicatie bijwerken door het script **deploy.sh** uit te voeren, die in zich in de hoofdmap van het project bevindt. Zorg er wel voor dat je ingelogd bent als ``dsmr`` gebruiker op de terminal:: `Maak een ticket aan op Github <https://github.com/dennissiemensma/dsmr-reader/issues/new>`_. ``./manage.py dsmr_stats_clear_statistics --ack-to-delete-my-data`` 