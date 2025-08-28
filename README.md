# ContantList

Небольшое учебное приложение на **SwiftUI**, которое генерирует список контактов и показывает их в двух вкладках: простой список и секции с деталями. Проект без внешних зависимостей.

---

## 📦 Стек и минимальные требования

- **Язык:** Swift 5.0  
- **UI:** SwiftUI + UIKit App/Scene Delegate  
- **Поддержка iOS:** iOS 18.4+  
- **Сборка:** Xcode 16.x+  
- **Зависимости:** отсутствуют (SPM/CocoaPods не используются)

---

## ✨ Функциональность

- Таб-бар с двумя экранами:
  - **Contact List:** список `Person` с переходом на экран деталей.
  - **Numbers:** секционный список. В секции — телефон и email контакта.
- Экран **деталей контакта** с иконкой-аватаром, телефоном и email.
- Навигация на базе `NavigationStack`.
- Демоданные генерируются из `DataStore` в `Person.getContactList()`.

---

## 🧩 Архитектура и данные

- **Модель**: `Person: Identifiable` с полями `id`, `name`, `surname`, `email`, `phoneNumber` и вычисляемым `fullName`.
- **Источник данных**: `DataStore.shared` хранит массивы имён, фамилий, email и телефонов и собирает список контактов.
- **Слои проекта**:
  - `Models/` — модель `Person`
  - `Views/` — `ContentView`, `ContactListView`, `SectionsView`, `PersonView`
  - `Services/` — `DataStore`
  - `Assets.xcassets/` — ресурсы (AppIcon, AccentColor)
  - `Base.lproj/LaunchScreen.storyboard` — экран запуска
  - `AppDelegate.swift`, `SceneDelegate.swift` — инициализация приложения

---

## 📲 Скриншоты

Добавьте изображения в папку `Docs/` в корне репозитория и раскомментируйте ссылки ниже.

<!--
| Список | Секции | Детали |
|---|---|---|
| ![List](Docs/list.png) | ![Sections](Docs/sections.png) | ![Details](Docs/details.png) |
-->

---

## 🚀 Запуск проекта

```bash
git clone https://github.com/Alexander6Shevtsov/ContantList.git
cd ContantList/ContantList
open ContantList.xcodeproj
```

Далее: выберите **iOS 18.x Simulator** или подключённое устройство и нажмите **Run**.

---

## 🔧 Технические детали

- `ContentView` — корневой `TabView` с двумя вкладками.
- `ContactListView` — `List` с `NavigationLink` к `PersonView`.
- `SectionsView` — `List` с `Section`, в шапке — `fullName`.
- `PersonView` — отображение телефона и email через `Label`.
- `LaunchScreen.storyboard` используется только для заставки. Основной UI — **SwiftUI**.
- В проекте нет сторонних библиотек и сетевого слоя.

---

## 🛣️ Roadmap (идеи для развития)

- Поиск и фильтрация контактов.
- Локализация (RU/EN) и динамические строки.
- Сохранение данных (например, **Core Data**).
- Импорт/экспорт из/в JSON или адресную книгу.
- Тесты: **Unit** и **UI Tests**.
- Доступность: Dynamic Type, VoiceOver.
- Темы и более проработанный дизайн профиля.

---

## 📁 Структура репозитория

```
ContantList/
 ├─ ContantList.xcodeproj
 └─ ContantList/
    ├─ AppDelegate.swift
    ├─ SceneDelegate.swift
    ├─ Info.plist
    ├─ Assets.xcassets/
    ├─ Base.lproj/
    │   └─ LaunchScreen.storyboard
    ├─ Models/
    │   └─ Person.swift
    ├─ Services/
    │   └─ DataStore.swift
    └─ Views/
        ├─ ContentView.swift
        ├─ ContactListView.swift
        ├─ SectionsView.swift
        └─ PersonView.swift
```

---

## 📝 Лицензия

Укажите лицензию по желанию (например, MIT). Если файл `LICENSE` отсутствует, проект считается «все права защищены».

---

## 👤 Автор

Alexander Shevtsov — iOS Developer.  
GitHub: https://github.com/Alexander6Shevtsov
