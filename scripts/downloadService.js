'use  strict';

app.factory("downloadService", function ($http, $routeParams) {

    return {
        getDownloads: function (callback) {
            $http.post('./models/download_select.php').success(callback);
        },
        getDownload: function (callback) {
            $http.post('./models/download_select_where.php?id=' + $routeParams.downloadID).success(callback);
        },
        getDownloadFiles: function (callback) {
            $http.post('./models/download_files_select.php?id=' + $routeParams.downloadID).success(callback);
        }
    };

});