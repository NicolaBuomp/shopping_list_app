# Shopping List App

Un'applicazione per la gestione condivisa di liste della spesa, sviluppata con Flutter per il frontend e NestJS per il backend.

## Tecnologie Utilizzate

- **Flutter**: Framework per lo sviluppo dell'interfaccia utente.
- **Riverpod**: Stato gestito con il pattern MVVM.
- **NestJS**: Backend per la logica di business e gestione dell'autenticazione.
- **Supabase**: Database e autenticazione, accessibili solo dal backend.
- **WebSockets**: Aggiornamenti in tempo reale.
- **Notifiche Push**: Per eventi importanti.

## Funzionalità Principali

- **Autenticazione** degli utenti.
- **Creazione e gestione di liste** della spesa.
- **Aggiunta, modifica ed eliminazione** di elementi nella lista.
- **Condivisione delle liste** con altri utenti e gestione dei permessi.
- **Aggiornamenti in tempo reale** tramite WebSockets.
- **Supporto offline** con sincronizzazione automatica.

## Installazione

### Requisiti

- Flutter installato ([Guida](https://flutter.dev/docs/get-started/install))
- Dart SDK
- Un backend NestJS configurato

### Clonare il repository

```sh
git clone https://github.com/tuo-repo/shopping-list.git
cd shopping-list
```

### Installare le dipendenze

```sh
flutter pub get
```

### Configurare l'ambiente

Crea un file `.env` e definisci le variabili per l'API del backend.

```env
API_BASE_URL=https://tuo-backend.com/api
```

### Eseguire l'app

```sh
flutter run
```

## Struttura del Progetto

```plaintext
/lib
  ├── main.dart          # Entry point dell'app
  ├── core/              # Configurazioni e servizi generali
  ├── models/            # Modelli dei dati
  ├── providers/         # Gestione dello stato con Riverpod
  ├── repositories/      # Chiamate al backend
  ├── screens/           # Schermate dell'app
  ├── widgets/           # Componenti riutilizzabili
```

## Contributi

Sentiti libero di aprire una pull request o segnalare problemi nella sezione Issues del repository.

## Licenza

Questo progetto è distribuito sotto licenza MIT. Vedi il file `LICENSE` per i dettagli.

