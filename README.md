# Clima

A Flutter weather application that allows users to check the weather conditions for their current location or any specific city around the world.

## Features

*   **Current Location Weather**: Automatically fetches the weather for the user's current device location using the Geolocation API.
*   **City Search**: Users can type in a city name to get the live weather updates for that specific location.
*   **Live Weather Data**: Integrated with a live weather API (e.g., OpenWeatherMap) to fetch real-time atmospheric conditions, temperature, and weather descriptions.
*   **Dynamic UI**: The user interface adapts its background and icons based on the current weather conditions and temperature.
*   **Loading Indicators**: Includes custom loading spinners (`flutter_spinkit`) while fetching location and network data.

## Technologies and Packages Used

*   **[Flutter](https://flutter.dev/) & Dart**: The core framework and language used to build the cross-platform application.
*   **[http](https://pub.dev/packages/http)**: Used for making asynchronous HTTP requests to the Live Weather API.
*   **[geolocator](https://pub.dev/packages/geolocator)**: A geolocation plugin to query the current location of the device.
*   **[flutter_spinkit](https://pub.dev/packages/flutter_spinkit)**: A collection of loading indicators to provide visual feedback during background processes.

## Project Structure

The project follows a standard Flutter architecture with a strong separation of concerns:

*   `lib/screens/`: Contains the UI components.
    *   `loading_screen.dart`: The initial screen that handles getting the location and fetching initial weather data.
    *   `location_screen.dart`: The main screen displaying the weather for the current or selected location.
    *   `city_screen.dart`: A screen that allows the user to input a specific city name to search for its weather.
*   `lib/services/`: Contains the core logic for APIs and device services.
    *   `location.dart`: Handles requesting location permissions and getting GPS coordinates.
    *   `networking.dart`: A helper class for making HTTP requests and decoding the JSON responses.
    *   `weather.dart`: Contains the logic to interpret weather condition codes and map them to appropriate icons and UI messages.
*   `lib/utilities/`: Contains helper files like `constants.dart` for styles and API keys.

## Getting Started

To run this project locally, ensure you have Flutter installed.

1.  Clone this repository.
2.  Navigate to the project directory: `cd clima_app`
3.  Install dependencies:
    ```bash
    flutter pub get
    ```
4.  Run the application:
    ```bash
    flutter run
    ```

**Note**: You will need to obtain a free API key from your weather provider (e.g., OpenWeatherMap) and add it to the project (often in `lib/utilities/constants.dart` or an environment variable file) for the live weather data to fetch successfully.
