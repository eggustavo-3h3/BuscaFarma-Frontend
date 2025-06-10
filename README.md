# buscafarma

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Geração de Código

Sempre que mexer no código de API ou nos Requests/Responses rodem:

```bash
dart run build_runner build --delete-conflicting-outputs
```

## Deploy

```bash
#limpa as compilações existentes para prevenir desencontros
flutter clean

#faz o build para web
flutter build web

#depois disso é só pegar o conteúdo da pasta build/web e testar
```