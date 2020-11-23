# Benachrichtigungen

## Email versenden
  
- Versand von Emails über Email-Service
  - SendGRID Nuget Package
  - C# client library and examples for using Twilio SendGrid API's to send mail and access Web API v3 endpoints with .NET Standard 1.3 and .NET Core support.
    
  

## Interner Benachrichtigungs Server
- Isolierter Server für Nachrichten 
  - stellt API bereit für Abfragen und Einträge in die Benachrichtigungs-Tabelle
  - ASP.NET Core SignalR Connection Datenaustausch Server Client über Websocket 
  - Web Push Notifications (WPN) für wichtige Nachrichten versenden, 
    die auf dem Desktop des Users angezeigt werden, auch wenn der User nicht auf der Website ist oder den Browser geöffnet hat.
   
## App
- eingehenden Benachrichtigungen werden registriert über persistente SignalR Verbindung 
- Benachrichtigungs-Eingang: 
  - Anzeige Button mit Badge mit der Anzahl ungelesener Nachrichten
  - Klick darauf öffnet den Posteingang mit den ungelesenen Nachrichten fett 
    dargestellt (Ähnlich einem Mail-Clienten), absteigend nach Datum
    - im Titel steht das Datum, der Absender und der Meldungs-Gegenstand (z.B. Formular-Titel)
    - der Benachrichtigungs Body enthält u.a einen Link zum Benachrichtigungs-Gegenstand, z.B auf das Formular  
    - Es gibt einen "Antworten" Button, um eine Textmitteilung zurücksenden, z.B. für Rückfragen
  - "Beobachten"-Funktion falls mich etwas interessiert
  
- Ausgang
  - dient als übersicht was der Benutzer gemacht hat
  - Link in der Nachricht, z.B auf das Formular  

  
    
  