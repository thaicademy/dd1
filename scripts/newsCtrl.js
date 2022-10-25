'use  strict';
app.controller('newsCtrl', ['$scope', '$http', 'FileUploader', 'newsService', function ($scope, $http, FileUploader, newsService) {
        $scope.CurrentView = "detail";
        $scope.news = [];
        $scope.CurentIndex = -1;
        $scope.frm = {
            title: "",
            detail: "",
            source: ""
        };

        $scope.getNews = function () {
            newsService.getNews(function (data) {
                $scope.news = data;
            })
        }
        $scope.newData = function () {
            $scope.CurentIndex = -1;
            console.log("Index=" + $scope.CurentIndex);
            $("#div-datatable").hide("slow");
            $("#div-editbox").show("slow");
        };

        $scope.editData = function (data) {
            $scope.CurentIndex = $scope.news.indexOf(data);
            console.log("Index=" + $scope.CurentIndex);
            console.log("Index2=" + data.id);
            $scope.frm.title = data.title;
            $scope.frm.detail = data.detail;
            $scope.frm.source = data.source;
            $("#div-datatable").hide("slow");
            $("#div-editbox").show("slow");
            //-----------------------------------------------------------------           
        };

        $scope.delData = function (data) {
            $scope.CurentIndex = $scope.news.indexOf(data);
            $scope.news.splice($scope.CurentIndex, data);
            console.log("Index=" + $scope.CurentIndex);
            console.log("Index2=" + data);
            if (confirm("Are you sure to delete?")) {
                var url = "models/news_del.php?id=";
                $http.post(url + data.id, {
                        'files': data.files
                    })
                    .success(function (data) {
                        $scope.getNews();
                    });
            }
        };

        $scope.saveData = function ($params) {
            console.log($scope.frm);
            if ($scope.CurentIndex < 0) { //-1 New Mode   
                var url = "models/news_insert.php";
                $http.post(url, {
                        'title': $params.title,
                        'detail': $params.detail,
                        'source': $params.source
                    })
                    .success(function (data) {
                        $scope.getNews();
                    });
                //**********************************************
            } else { //Edit Mode 
                console.log("Index2:" + $scope.news[$scope.CurentIndex].id);
                var url = "models/news_update.php?id=";
                $http.post(url + $scope.news[$scope.CurentIndex].id, {
                        'title': $params.title,
                        'detail': $params.detail,
                        'source': $params.source
                    })
                    .success(function (data) {
                        $scope.getNews();
                    });
            }
            $scope.frm = {
                title: "",
                detail: "",
                source: ""
            };
            $("#div-datatable").show("slow");
            $("#div-editbox").hide("slow");
        };

        $scope.cancelData = function () {
            $scope.frm = {
                title: "",
                detail: "",
                source: ""
            };
            $("#div-datatable").show("slow");
            $("#div-editbox").hide("slow");
        };

    }])

    .controller('newsDetailCtrl', ['$scope', '$http', '$routeParams', 'newsService', function ($scope, $http, $routeParams, newsService) {
        $scope.Title = 'News Detail';
        $scope.CurrentView = "list"; //
        $scope.newsID = $routeParams.newsID; 
        $scope.newsItem = [];
        $scope.newsFiles = [];
        
        console.log("index=" + $scope.newsID);

        $scope.getNewsItem = function () {
            newsService.getNewsItem(function (data) {
                $scope.newsItem = data;
            })
        }
        $scope.getNewsFiles = function () {
            newsService.getNewsFiles(function (data) {
                $scope.newsFiles = data;
            })
        }

        $scope.delFiles = function (data) {
            $scope.CurentIndex = $scope.newsItem.indexOf(data);
            $scope.newsItem.splice($scope.CurentIndex, 1);
            console.log("Index=" + $scope.CurentIndex);
            if (confirm("Are you sure to delete?")) {
                var url = "./models/news_files_del.php?files=";
                $http.post(url + data)
                    .success(function (data) {
                        $scope.getNewsFiles();
                    });
            }
        }
        
        //pdf read
        $scope.pdfName = 'PDFTron SDK';
        $scope.pdfUrl = 'public/news/data/' + $routeParams.files;
        $scope.pdfPassword = 'test';
        $scope.scroll = 0;
        $scope.loading = 'loading';

        $scope.getNavStyle = function (scroll) {
            if (scroll > 100) return 'pdf-controls fixed';
            else return 'pdf-controls';
        }

        $scope.onError = function (error) {
            console.log(error);
        }

        $scope.onLoad = function () {
            $scope.loading = '';
        }

        $scope.onProgress = function (progressData) {
            // console.log(progressData);
        }

        $scope.onPassword = function (updatePasswordFn, passwordResponse) {
            if (passwordResponse === PDFJS.PasswordResponses.NEED_PASSWORD) {
                updatePasswordFn($scope.pdfPassword);
            } else if (
                passwordResponse === PDFJS.PasswordResponses.INCORRECT_PASSWORD
            ) {
                console.log('Incorrect password');
            }
        }

        $scope.openLocalFile = function () {
            jQuery('#file').trigger('click');
        }

        $scope.onFileSelected = function (e) {
            if (!e.files.length) return;
            var file = e.files[0];
            var reader = new FileReader();
            reader.onload = function (res) {
                $scope.$apply(function () {
                    $scope.pdfUrl = res.target.result;
                });
            };
            reader.readAsDataURL(file);
        }

    }])
    //---------------------------------------------------
    .controller('newsUploadCtrl', ['$scope', '$http', '$routeParams', 'FileUploader', function ($scope, $http, $routeParams, FileUploader) {
        $scope.Title = 'News Upload';
        $scope.newsID = $routeParams.newsID; //แก้
        $scope.news = [];
        console.log("index=" + $scope.newsID);
        var uploader = $scope.uploader = new FileUploader({
            url: './models/news_upload.php?id=' + $scope.newsID
        });
        console.log('index' + uploader);
        // FILTERS
        uploader.filters.push({
            name: 'customFilter',
            fn: function (item /*{File|FileLikeObject}*/ , options) {
                return this.queue.length < 100;
            }
        });
        // CALLBACKS
        uploader.onWhenAddingFileFailed = function (item /*{File|FileLikeObject}*/ , filter, options) {
            console.info('onWhenAddingFileFailed', item, filter, options);
        };
        uploader.onAfterAddingFile = function (fileItem) {
            console.info('onAfterAddingFile', fileItem);
        };
        uploader.onAfterAddingAll = function (addedFileItems) {
            console.info('onAfterAddingAll', addedFileItems);
        };
        uploader.onBeforeUploadItem = function (item) {
            console.info('onBeforeUploadItem', item);
        };
        uploader.onProgressItem = function (fileItem, progress) {
            console.info('onProgressItem', fileItem, progress);
        };
        uploader.onProgressAll = function (progress) {
            console.info('onProgressAll', progress);
        };
        uploader.onSuccessItem = function (fileItem, response, status, headers) {
            console.info('onSuccessItem', fileItem, response, status, headers);
        };
        uploader.onErrorItem = function (fileItem, response, status, headers) {
            console.info('onErrorItem', fileItem, response, status, headers);
        };
        uploader.onCancelItem = function (fileItem, response, status, headers) {
            console.info('onCancelItem', fileItem, response, status, headers);
        };
        uploader.onCompleteItem = function (fileItem, response, status, headers) {
            console.info('onCompleteItem', fileItem, response, status, headers);
        };
        uploader.onCompleteAll = function () {
            console.info('onCompleteAll');
        };
        console.info('uploader', uploader);
    }])

    .controller('newsTitleUploadCtrl', ['$scope', '$http', '$routeParams', 'FileUploader', function ($scope, $http, $routeParams, FileUploader) {
        $scope.Title = 'News Title Upload';
        $scope.newsID = $routeParams.newsID; //แก้    
        console.log("index=" + $scope.newsID);
        var uploader = $scope.uploader = new FileUploader({
            url: 'models/news_title_upload.php?id=' + $scope.newsID
        });
        console.log('index' + uploader);
        // FILTERS
        uploader.filters.push({
            name: 'customFilter',
            fn: function (item /*{File|FileLikeObject}*/ , options) {
                return this.queue.length < 10; //default 10
            }
        });
        // CALLBACKS
        uploader.onWhenAddingFileFailed = function (item /*{File|FileLikeObject}*/ , filter, options) {
            console.info('onWhenAddingFileFailed', item, filter, options);
        };
        uploader.onAfterAddingFile = function (fileItem) {
            console.info('onAfterAddingFile', fileItem);
        };
        uploader.onAfterAddingAll = function (addedFileItems) {
            console.info('onAfterAddingAll', addedFileItems);
        };
        uploader.onBeforeUploadItem = function (item) {
            console.info('onBeforeUploadItem', item);
        };
        uploader.onProgressItem = function (fileItem, progress) {
            console.info('onProgressItem', fileItem, progress);
        };
        uploader.onProgressAll = function (progress) {
            console.info('onProgressAll', progress);
        };
        uploader.onSuccessItem = function (fileItem, response, status, headers) {
            console.info('onSuccessItem', fileItem, response, status, headers);
        };
        uploader.onErrorItem = function (fileItem, response, status, headers) {
            console.info('onErrorItem', fileItem, response, status, headers);
        };
        uploader.onCancelItem = function (fileItem, response, status, headers) {
            console.info('onCancelItem', fileItem, response, status, headers);
        };
        uploader.onCompleteItem = function (fileItem, response, status, headers) {
            console.info('onCompleteItem', fileItem, response, status, headers);
        };
        uploader.onCompleteAll = function () {
            console.info('onCompleteAll');
        };
        console.info('uploader', uploader);
    }]);