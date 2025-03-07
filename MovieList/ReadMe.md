# Basic APP information

- API Endpoints in use: 
  - **Movie List** - https://api.themoviedb.org/3/discover/movie?api_key=YOUR_API_KEY
  - **Movie Detail** - https://api.themoviedb.org/3/search/movie?query={search_term}&api_key=YOUR_API_KEY
  - **How API Handled** - API Folder has a file MoviesAPIClient.swift this generates the asynchronous api call using Alamofire framework requests are made
  - async await is used to handle the API request and Handle the response 
  - **How Images are fetched** - DownloadImageAsyncVM.swift fetches the image asynchronously
  
- Package & Dependency
  - Alamofire - https://github.com/Alamofire/Alamofire.git
  
  # UI Configuration

  **Movie List
  - MovieListpage.swift is the controller and MovielistViewModel is the viewmodel for the same
  - The cell configuration is made on MovieListCell.swift
  - Since we have n number of datas and need to load the images from url we use async call
  
  **Movie Detail
  - MovieDetailPage.swift is the controller to display the movie detail page
  - The MovieListCell.swift is altered to handle the poster. In case list will appear in different way and in case detail it will appear in diffrent way
  
  
