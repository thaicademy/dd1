'use  strict';

app.controller('downloadCtrl', ['$scope', '$http', 'FileUploader', 'downloadService', function ($scope, $http, FileUploader, downloadService) {
        $scope.CurrentView = "list";
        $scope.downloads = [];
        $scope.CurentIndex = -1;
        $scope.frm = {
            title: "",
            detail: "",
            source: ""
        }

        $scope.getDownloads = function () {
            downloadService.getDownloads(function (data) {
                $scope.downloads = data;
            })
        }
        $scope.newData = function () {
            $scope.CurentIndex = -1;
            console.log("Index=" + $scope.CurentIndex);
            $("#div-datatable").hide("slow");
            $("#div-editbox").show("slow");
        }

        $scope.editData = function (data) {
            $scope.CurentIndex = $scope.downloads.indexOf(data);
            console.log("Index=" + $scope.CurentIndex);
            console.log("Index2=" + data.id);
            $scope.frm.title = data.title;
            $scope.frm.detail = data.detail;
            $scope.frm.source = data.source;
            $("#div-datatable").hide("slow");
            $("#div-editbox").show("slow");
        }

        $scope.delData = function (data) {
            $scope.CurentIndex = $scope.downloads.indexOf(data);
            $scope.downloads.splice($scope.CurentIndex, data);
            console.log("Index=" + $scope.CurentIndex);
            console.log("Index2=" + data);
            if (confirm("Are you sure to delete?")) {
                var url = "./models/download_del.php?id=";
                $http.post(url + data.id, {
                        'files': data.files
                    })
                    .success(function (data) {
                        $scope.getDownloads();
                    });
            }
        }

        $scope.saveData = function ($params) {
            console.log($scope.frm);
            if ($scope.CurentIndex < 0) { //-1 New Mode   
                var url = "./models/download_insert.php";
                $http.post(url, {
                        'title': $params.title,
                        'detail': $params.detail,
                        'source': $params.source
                    })
                    .success(function (data) {
                        $scope.getDownloads();
                    });
            } else { //Edit Mode 
                console.log("Index2:" + $scope.downloads[$scope.CurentIndex].id);
                var url = "./models/download_update.php?id=";
                $http.post(url + $scope.downloads[$scope.CurentIndex].id, {
                        'title': $params.title,
                        'detail': $params.detail,
                        'source': $params.source
                    })
                    .success(function (data) {
                        $scope.getDownloads();
                    });
            }
            $scope.frm = {
                title: "",
                detail: "",
                source: ""
            };
            $("#div-datatable").show("slow");
            $("#div-editbox").hide("slow");
        }

        $scope.cancelData = function () {
            $scope.frm = {
                title: "",
                detail: "",
                source: ""
            };
            $("#div-datatable").show("slow");
            $("#div-editbox").hide("slow");
        }

    }])

    .controller('downloadDetailCtrl', ['$scope', '$http', '$routeParams', 'downloadService', function ($scope, $http, $routeParams, downloadService) {
        $scope.Title = 'Download Detail';
        $scope.CurrentView = "list";
        $scope.downloadID = $routeParams.downloadID;
        $scope.download = [];
        $scope.downloadFiles = [];
       // $scope.files = $routeParams.files;

        console.log("index=" + $scope.downloadID);

        $scope.getDownload = function () {
            downloadService.getDownload(function (data) {
                $scope.download = data;
            })
        }

        $scope.getDownloadFiles = function () {
            downloadService.getDownloadFiles(function (data) {
                $scope.downloadFiles = data;
            })
        }

        $scope.delFiles = function (data) {
            $scope.CurentIndex = $scope.downloadFiles.indexOf(data);
            $scope.downloadFiles.splice($scope.CurentIndex, 1);
            console.log("Index=" + $scope.CurentIndex);
            if (confirm("Are you sure to delete?")) {
                var url = "./models/download_files_del.php?files=";
                $http.post(url + data)
                    .success(function (data) {
                        $scope.getDownloadFiles();
                    });
            }
        }

        //pdf read
        $scope.pdfName = 'PDFTron SDK';
        $scope.pdfUrl = 'public/download/data/' + $routeParams.files;
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

    .controller('downloadUploadCtrl', ['$scope', '$http', '$routeParams', 'FileUploader', function ($scope, $http, $routeParams, FileUploader) {
        $scope.Title = 'Download Upload';
        $scope.downloadID = $routeParams.downloadID;
        $scope.download = [];
        console.log("index=" + $scope.downloadID);

        var uploader = $scope.uploader = new FileUploader({
            url: './models/download_upload.php?id=' + $scope.downloadID
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

    .controller('downloadTitleUploadCtrl', ['$scope', '$http', '$routeParams', 'FileUploader', function ($scope, $http, $routeParams, FileUploader) {
        $scope.Title = 'Download Title Upload';
        $scope.downloadID = $routeParams.downloadID; //แก้    
        console.log("index=" + $scope.downloadID);

        var uploader = $scope.uploader = new FileUploader({
            url: './models/download_title_upload.php?id=' + $scope.downloadID

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