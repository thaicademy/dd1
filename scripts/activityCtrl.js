'use  strict';
app.controller('activityCtrl', ['$scope', '$http', '$timeout', '$routeParams', 'activityService', function ($scope, $http, $timeout, $routeParams, activityService) {
    $scope.Title = 'Activities';
    $scope.CurrentView = "list"; //ค่าเริ่มต้นรูปแบบการแสดงผล
    $scope.activityID = $routeParams.activityID; //แก้
    $scope.activity = [];
    $scope.activities = [];
    $scope.CurentIndex = -1;
    $scope.frm = {
        title: "",
        detail: ""
    };

    $scope.getActivities = function () {
        activityService.getActivities(function (data) {
            $scope.activities = data;
            $scope.currentPage = 1; //current page
            $scope.entryLimit = 10; //max no of items to display in a page
            $scope.filteredItems = $scope.activities.length; //Initially for no filter  
            $scope.totalItems = $scope.activities.length;
            $scope.rowSize = 3; // number of images in a row
            $scope.maxSize = 10; // max number of pagination items
            initPagination($scope.activities);
        });
    }

    $scope.setPage = function (pageNumber) {
        $scope.currentPage = pageNumber;
    }
    $scope.filter = function () {
        $timeout(function () {
            $scope.filteredItems = $scope.filtered.length;
        }, 10);
    }
    $scope.sort_by = function (predicate) {
        $scope.predicate = predicate;
        $scope.reverse = !$scope.reverse;
    }

    function initPagination(data) {
        $scope.totalItems = data.length;
        var rowsCount = Math.ceil(data.length / $scope.rowSize);
        var index;
        $scope.imagesData = [];
        for (var i = 0; i < rowsCount; i++) {
            $scope.imagesData[i] = new Array();
            for (var j = 0; j < $scope.rowSize; j++) {
                index = $scope.rowSize * i + j;
                if (data[index])
                    $scope.imagesData[i][j] = data[index];
            }
        }
    }

    $scope.newData = function () {
        $scope.CurentIndex = -1;
        //   console.log("Index=" + $scope.CurentIndex);
        $("#div-datatable").hide("slow");
        $("#div-editbox").show("slow");
    }

    $scope.editData = function (data) {
        $scope.CurentIndex = $scope.activities.indexOf(data);
        //   console.log("Index=" + $scope.CurentIndex);
        $scope.frm.title = data.title;
        $scope.frm.detail = data.detail;
        $("#div-datatable").hide("slow");
        $("#div-editbox").show("slow");
    }

    $scope.delData = function (data) {
        $scope.CurentIndex = $scope.activities.indexOf(data);
        $scope.activities.splice($scope.CurentIndex, 1);
        //    console.log("Index=" + $scope.CurentIndex);
        if (confirm("Are you sure to delete?")) {
            var url = "models/activity_del.php?id=";
            $http.post(url + data.id, {
                    'image': data.image
                })
                .success(function (data) {
                    $scope.getActivities();
                });
        }
    }

    $scope.saveData = function ($params) {
        //    console.log($scope.frm);
        //    console.log("Hello=",$scope.CurentIndex);
        if ($scope.CurentIndex < 0) { //-1 New Mode
            var url = "models/activity_insert.php";
            $http.post(url, {
                    'title': $params.title,
                    'detail': $params.detail
                })
                .success(function (data) {
                    $scope.getActivities();
                });
        } else { //Edit Mode
            $scope.activities[$scope.CurentIndex].title = $scope.frm.title;
            $scope.activities[$scope.CurentIndex].detail = $scope.frm.detail;
            var url = "models/activity_update.php?id=";
            $http.post(url + $scope.activities[$scope.CurentIndex].id, {
                    'title': $params.title,
                    'detail': $params.detail
                })
                .success(function (data) {
                    $scope.getActivities();
                });
        }
        $scope.frm = {
            title: "",
            detail: ""
        };
        $("#div-datatable").show("slow");
        $("#div-editbox").hide("slow");
    }

    $scope.cancelData = function () {
        $scope.frm = {
            title: "",
            detail: ""
        };
        $("#div-datatable").show("slow");
        $("#div-editbox").hide("slow");
    }

}]);

app.controller('activityDetailCtrl', ['$scope', '$http', '$routeParams', 'activityService', function ($scope, $http, $routeParams, activityService) {
    $scope.Title = 'Activity';
    $scope.CurrentView = "list"; //
    $scope.activityID = $routeParams.activityID; //แก้
    $scope.activity = [];
    $scope.activityImage = [];

    $scope.getActivity = function () {
        activityService.getActivity(function (data) {
            $scope.activity = data;
        })
    }
    $scope.getActivityImage = function () {
        activityService.getActivityImage(function (data) {
            $scope.activityImage = data;
        })
    }

    $scope.delImage = function (data) {
        $scope.CurentIndex = $scope.activityImage.indexOf(data);
        $scope.activityImage.splice($scope.CurentIndex, 1);
        //  console.log("Index=" + $scope.CurentIndex);
        if (confirm("Are you sure to delete ?")) {
            var url = "./models/activity_image_del.php?photo=";
            $http.post(url + data)
                .success(function (data) {
                    $scope.getActivityImage();
                });
        }
    }
}]);

app.controller('activityUploadCtrl', ['$scope', '$http', '$routeParams', 'FileUploader', function ($scope, $http, $routeParams, FileUploader) {
    $scope.Title = 'Activity Upload';
    $scope.activityID = $routeParams.activityID; //แก้
    $scope.activity = [];

    console.log("index=" + $scope.activityID);

    var uploader = $scope.uploader = new FileUploader({
        url: './models/activity_upload.php?id=' + $scope.activityID
    });
    console.log('index' + uploader);

    // FILTERS
    uploader.filters.push({
        name: 'customFilter',
        fn: function (item /*{File|FileLikeObject}*/ , options) {
            return this.queue.length < 300; //default 10
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

app.controller('activityTitleUploadCtrl', ['$scope', '$http', '$routeParams', 'FileUploader', function ($scope, $http, $routeParams, FileUploader) {
    $scope.Title = 'Activity Title Upload';
    $scope.activityID = $routeParams.activityID; //แก้
    console.log("index=" + $scope.activityID);

    var uploader = $scope.uploader = new FileUploader({
        url: './models/activity_title_upload.php?id=' + $scope.activityID
    });
    console.log('index' + uploader);

    // FILTERS
    uploader.filters.push({
        name: 'customFilter',
        fn: function (item /*{File|FileLikeObject}*/ , options) {
            return this.queue.length < 100; //default 10
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