# European Countries Flutter App

This Flutter application fetches and displays a list of European countries. It allows users to view details of each country, including its name, capital, flag, and more. Users can sort the list based on various criteria and see detailed information about each country.

## Features
* Fetch and Display Countries: Retrieves a list of European countries from a REST API.
* Sorting: Sort countries by name, population, or capital.
* Detailed View: Shows detailed information about a selected country, including its official name, flag, population, and languages.
* Error Handling: Manages network errors and displays appropriate messages.

## Project Structure
The project is organized into `models`, `services`, `screens`, `widgets`, and `utils` directories to keep the code modular and maintainable.
  Folder Structure
    lib/
        models/ - Contains data models (country.dart).
        screens/ - Contains the app screens (country_list_screen.dart, country_detail_screen.dart).
        services/ - Contains API service classes (api_service.dart).
        widgets/ - Contains reusable widgets (country_tile.dart, sort_dropdown.dart).
        utils/ - Contains utility files (constants.dart, custom_exceptions.dart).
        test/ - Contains unit tests and widget tests.


## API
 This app uses the REST Countries API to fetch data for European countries.
    Endpoint: https://restcountries.com/v3.1/region/europe?fields=name,capital,flags,region,languages,population,capital
    Data Fields: name, capital, flags, region, languages, population

## Installation
  Clone the Repository
    git clone https://github.com/Tkenthiran98/flutter_europe_countries_app.git
    cd flutter_europe_countries_app
   
   Install Dependencies
     Run the following command to get the required packages:
       flutter pub get
## Generate Code 
  This app uses json_serializable for JSON parsing. Generate the necessary files by running:
     flutter pub run build_runner build

