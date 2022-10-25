'use  strict';

app.factory("newsService", function ($http, $routeParams) {
    return{
        getNews: function (callback) {
            $http.post('models/news_select.php').success(callback);
        },
        getNewsItem: function (callback) {   
            $http.post('models/news_select_where.php?id='+$routeParams.newsID).success(callback);
        },
           getNewsFiles: function (callback) {
            $http.post('models/news_files_select.php?id='+$routeParams.newsID).success(callback);
        }
    }
});