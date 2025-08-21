sealed class AppEvent {
  const AppEvent();
}

class AppInit extends AppEvent{
  const AppInit();
}

class AppLogout extends AppEvent{
  const AppLogout();
}
