app.controller ('teacherCtrl', [
  '$scope',
  '$http',
  '$routeParams',
  'teacherService',
  function ($scope, $http, $routeParams, teacherService) {
    $scope.Title = 'Teacher';
    $scope.CurrentView = 'list';
    $scope.orderFieldName = 'teacher_id';
    $scope.isASC = false;
    $scope.teachers = [];
    $scope.teacher = [];
    $scope.teacherID = $routeParams.teacherID;
    $scope.CurentIndex = -1;
    $scope.frm = {
      teacher_id: '',
      firstname: '',
      lastname: '',
      sex: '',
      email: '',
      address: '',
      tel: '',
      position: '',
    };

    $scope.getTeachers = function () {
      teacherService.getTeachers (function (data) {
        $scope.teachers = data;
      });
    };

    $scope.getTeacher = function () {
      teacherService.getTeacher (function (data) {
        $scope.teacher = data;
      });
    };

    $scope.newData = function () {
      $scope.CurentIndex = -1;
      $ ('#div-datatable').hide ('slow');
      $ ('#div-editbox').show ('slow');
    };

    $scope.editData = function (data) {
      $scope.CurentIndex = $scope.teachers.indexOf (data);
      $scope.frm.teacher_id = data.teacher_id;
      $scope.frm.firstname = data.firstname;
      $scope.frm.lastname = data.lastname;
      $scope.frm.sex = data.sex;
      $scope.frm.email = data.email;
      $scope.frm.address = data.address;
      $scope.frm.tel = data.tel;
      $scope.frm.position = data.position;
      $ ('#div-datatable').hide ('slow');
      $ ('#div-editbox').show ('slow');
    };

    $scope.delData = function (data) {
      $scope.CurentIndex = $scope.teachers.indexOf (data);
      $scope.teachers.splice ($scope.CurentIndex, data);
      if (confirm ('Are you sure to delete?')) {
        var url = 'models/teacher_del.php?id=';
        $http
          .post (url + data.id, {image: data.image})
          .success (function (data) {
            $scope.getTeachers ();
          });
      }
    };

    $scope.saveData = function ($params) {
      if ($scope.CurentIndex < 0) {
        //-1 New Mode
        var url = 'models/teacher_insert.php';
        $http
          .post (url, {
            teacher_id: $params.teacher_id,
            firstname: $params.firstname,
            lastname: $params.lastname,
            sex: $params.sex,
            email: $params.email,
            address: $params.address,
            tel: $params.tel,
            position: $params.position,
          })
          .success (function (data) {
            $scope.getTeachers ();
          });
      } else {
        //Edit Mode
        var url = 'models/teacher_update.php?id=';
        $http
          .post (url + $scope.teachers[$scope.CurentIndex].id, {
            teacher_id: $params.teacher_id,
            firstname: $params.firstname,
            lastname: $params.lastname,
            sex: $params.sex,
            email: $params.email,
            address: $params.address,
            tel: $params.tel,
            position: $params.position,
          })
          .success (function (data) {
            $scope.getDatas ();
          });
      }
      $scope.frm = {
        teacher_id: '',
        firstname: '',
        lastname: '',
        sex: '',
        email: '',
        address: '',
        tel: '',
        position: '',
      };
      $ ('#div-datatable').show ('slow');
      $ ('#div-editbox').hide ('slow');
    };

    $scope.cancelData = function () {
      $scope.frm = {
        teacher_id: '',
        firstname: '',
        lastname: '',
        sex: '',
        email: '',
        address: '',
        tel: '',
        position: '',
      };
      $ ('#div-datatable').show ('slow');
      $ ('#div-editbox').hide ('slow');
    };
  },
]);

app.controller ('teacherDetailCtrl', [
  '$scope',
  '$http',
  '$routeParams',
  'teacherService',
  function ($scope, $http, $routeParams, teacherService) {
    $scope.Title = 'Teacher Detail';
    $scope.CurrentView = 'list'; //
    $scope.teacherID = $routeParams.teacherID; //แก้
    $scope.teachers = [];
    $scope.teacher = [];
    console.log ('index=' + $scope.teacherID);

    $scope.getTeachers = function () {
      teacherService.getTeachers (function (data) {
        $scope.teachers = data;
      });
    };
    $scope.getTeacher = function () {
      teacherService.getTeacher (function (data) {
        $scope.teacher = data;
      });
    };

    $scope.delData = function (data) {
      $scope.CurentIndex = $scope.teacher.indexOf (data);
      $scope.teacher.splice ($scope.CurentIndex, 1);
      console.log ('Index=' + $scope.CurentIndex);
      if (confirm ('Are you sure to delete ?')) {
        var url = 'models/teacher_del.php?id=';
        $http.post (url + data).success (function (data) {
          $scope.getTeacher ();
        });
      }
    };
  },
]);

app.controller ('teacherUploadCtrl', [
  '$scope',
  '$http',
  '$routeParams',
  'FileUploader',
  function ($scope, $http, $routeParams, FileUploader) {
    $scope.Title = 'Teacher Upload';
    $scope.teacherID = $routeParams.teacherID; //แก้
    $scope.teacher = [];
    console.log ('index=' + $scope.teacherID);
    var uploader = ($scope.uploader = new FileUploader ({
      url: 'models/teacher_upload.php?teacher_id=' + $scope.teacherID,
    }));
    console.log ('index' + uploader);
    // FILTERS
    uploader.filters.push ({
      name: 'customFilter',
      fn: function (item /*{File|FileLikeObject}*/, options) {
        return this.queue.length < 10;
      },
    });

    // CALLBACKS
    uploader.onWhenAddingFileFailed = function (
      item /*{File|FileLikeObject}*/,
      filter,
      options
    ) {
      console.info ('onWhenAddingFileFailed', item, filter, options);
    };
    uploader.onAfterAddingFile = function (fileItem) {
      console.info ('onAfterAddingFile', fileItem);
    };
    uploader.onAfterAddingAll = function (addedFileItems) {
      console.info ('onAfterAddingAll', addedFileItems);
    };
    uploader.onBeforeUploadItem = function (item) {
      console.info ('onBeforeUp loadItem', item);
    };
    uploader.onProgressItem = function (fileItem, progress) {
      console.info ('onProgressItem', fileItem, progress);
    };
    uploader.onProgressAll = function (progress) {
      console.info ('onProgressAll', progress);
    };
    uploader.onSuccessItem = function (fileItem, response, status, headers) {
      console.info ('onSuccessItem', fileItem, response, status, headers);
    };
    uploader.onErrorItem = function (fileItem, response, status, headers) {
      console.info ('onErrorItem', fileItem, response, status, headers);
    };
    uploader.onCancelItem = function (fileItem, response, status, headers) {
      console.info ('onCancelItem', fileItem, response, status, headers);
    };
    uploader.onCompleteItem = function (fileItem, response, status, headers) {
      console.info ('onCompleteItem', fileItem, response, status, headers);
    };
    uploader.onCompleteAll = function () {
      console.info ('onCompleteAll');
    };
    console.info ('uploader', uploader);
  },
]);

app.controller ('teacherTitleUploadCtrl', [
  '$scope',
  '$http',
  '$routeParams',
  'FileUploader',
  'teacherService',
  function ($scope, $http, $routeParams, FileUploader, teacherService) {
    $scope.teacher = [];
    $scope.teacherID = $routeParams.teacherID; //แก้
    $scope.getTeacher = function () {
      teacherService.getTeacher (function (data) {
        $scope.teacher = data;
      });
    };

    var uploader = ($scope.uploader = new FileUploader ({
      url: 'models/teacher_title_upload.php?id=' + $scope.teacherID,
    }));
    console.log ('index' + uploader);

    // FILTERS
    uploader.filters.push ({
      name: 'customFilter',
      fn: function (item /*{File|FileLikeObject}*/, options) {
        return this.queue.length < 100; //default 10
      },
    });

    // CALLBACKS
    uploader.onWhenAddingFileFailed = function (
      item /*{File|FileLikeObject}*/,
      filter,
      options
    ) {
      console.info ('onWhenAddingFileFailed', item, filter, options);
    };
    uploader.onAfterAddingFile = function (fileItem) {
      console.info ('onAfterAddingFile', fileItem);
    };
    uploader.onAfterAddingAll = function (addedFileItems) {
      console.info ('onAfterAddingAll', addedFileItems);
    };
    uploader.onBeforeUploadItem = function (item) {
      console.info ('onBeforeUploadItem', item);
    };
    uploader.onProgressItem = function (fileItem, progress) {
      console.info ('onProgressItem', fileItem, progress);
    };
    uploader.onProgressAll = function (progress) {
      console.info ('onProgressAll', progress);
    };
    uploader.onSuccessItem = function (fileItem, response, status, headers) {
      console.info ('onSuccessItem', fileItem, response, status, headers);
    };
    uploader.onErrorItem = function (fileItem, response, status, headers) {
      console.info ('onErrorItem', fileItem, response, status, headers);
    };
    uploader.onCancelItem = function (fileItem, response, status, headers) {
      console.info ('onCancelItem', fileItem, response, status, headers);
    };
    uploader.onCompleteItem = function (fileItem, response, status, headers) {
      console.info ('onCompleteItem', fileItem, response, status, headers);
    };
    uploader.onCompleteAll = function () {
      console.info ('onCompleteAll');
    };
    console.info ('uploader', uploader);
  },
]);
