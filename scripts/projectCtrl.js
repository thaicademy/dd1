'use  strict';
app.controller('projectCtrl', ['$scope', '$http', 'FileUploader', 'projectService', function ($scope, $http, FileUploader, projectService) {
    $scope.CurrentView = 'list';
    $scope.projects = [];
    $scope.CurentIndex = -1;
    $scope.frm = {
      year: '',
      project_id: '',
      budget: '',
      title: '',
      abstract: '',
      keyword: '',
      author: '',
      advisor: '',
      level: '',
      major: '',
      groups: '',
      faculty: '',
      files: '',
    };

    $scope.getProjects = function () {
      projectService.getProjects(function (data) {
        $scope.projects = data;
      });
    }

    $scope.newData = function () {
      $scope.CurentIndex = -1;
      console.log('Index=' + $scope.CurentIndex);
      $('#div-datatable').hide('slow');
      $('#div-editbox').show('slow');
    }

    $scope.editData = function (data) {
      $scope.CurentIndex = $scope.projects.indexOf(data);
      console.log('Index=' + $scope.CurentIndex);
      console.log('Index2=' + data.id);
      $scope.frm.year = data.year;
      $scope.frm.project_id = data.project_id;
      $scope.frm.budget = data.budget;
      $scope.frm.title = data.title;
      $scope.frm.abstract = data.abstract;
      $scope.frm.keyword = data.keyword;
      $scope.frm.author = data.author;
      $scope.frm.advisor = data.advisor;
      $scope.frm.level = data.level;
      $scope.frm.major = data.major;
      $scope.frm.groups = data.groups;
      $scope.frm.faculty = data.faculty;
      $scope.frm.files = data.files;

      $('#div-datatable').hide('slow');
      $('#div-editbox').show('slow');
    }

    $scope.delData = function (data) {
      $scope.CurentIndex = $scope.projects.indexOf(data);
      $scope.projects.splice($scope.CurentIndex, data);
      console.log('Index=' + $scope.CurentIndex);
      console.log('Index2=' + data);
      if (confirm('Are you sure to delete?')) {
        var url = 'models/project_del.php?id=';
        $http
          .post(url + data.id, {
            files: data.files,
          })
          .success(function (data) {
            $scope.getProjects();
          });
      }
    }

    $scope.saveData = function ($params) {
      console.log($scope.frm);
      if ($scope.CurentIndex < 0) {
        //-1 New Mode
        var url = 'models/project_insert.php';
        $http
          .post(url, {
            year: $params.year,
            project_id: $params.project_id,
            budget: $params.budget,
            title: $params.title,
            keyword: $params.keyword,
            abstract: $params.abstract,
            author: $params.author,
            advisor: $params.advisor,
            level: $params.level,
            major: $params.major,
            groups: $params.groups,
            faculty: $params.faculty,
            files: $params.files,
          })
          .success(function (data) {
            $scope.getProjects();
          });
      } else {
        //Edit Mode
        console.log('Index2:' + $scope.projects[$scope.CurentIndex].id);
        var url = 'models/project_update.php?id=';
        $http
          .post(url + $scope.projects[$scope.CurentIndex].id, {
            year: $params.year,
            project_id: $params.project_id,
            budget: $params.budget,
            title: $params.title,
            keyword: $params.keyword,
            abstract: $params.abstract,
            author: $params.author,
            advisor: $params.advisor,
            level: $params.level,
            major: $params.major,
            groups: $params.groups,
            faculty: $params.faculty,
            files: $params.files,
          })
          .success(function (data) {
            $scope.getProjects();
          });
      }
      $scope.frm = {
        year: '',
        project_id: '',
        budget: '',
        title: '',
        abstract: '',
        keyword: '',
        author: '',
        advisor: '',
        level: '',
        major: '',
        groups: '',
        faculty: '',
        files: '',
      };
      $('#div-datatable').show('slow');
      $('#div-editbox').hide('slow');
    }

    $scope.cancelData = function () {
      $scope.frm = {
        year: '',
        project_id: '',
        budget: '',
        title: '',
        abstract: '',
        keyword: '',
        author: '',
        advisor: '',
        level: '',
        major: '',
        groups: '',
        faculty: '',
        files: '',
      };
      $('#div-datatable').show('slow');
      $('#div-editbox').hide('slow');
    }
  }])

  .controller('projectDetailCtrl', ['$scope', '$http', '$routeParams', 'projectService', function ($scope, $http, $routeParams, projectService) {
    $scope.Title = 'Project Detail';
    $scope.CurrentView = 'list';
    $scope.projectID = $routeParams.projectID;
    $scope.project = [];
    $scope.projectFiles = [];

    console.log('index=' + $scope.projectID);

    $scope.getProject = function () {
      projectService.getProject(function (data) {
        $scope.project = data;
      });
    }

    $scope.getProjectFiles = function () {
      projectService.getProjectFiles(function (data) {
        $scope.projectFiles = data;
      });
    }

    $scope.delFiles = function (data) {
      $scope.CurentIndex = $scope.project.indexOf(data);
      $scope.project.splice($scope.CurentIndex, 1);
      console.log('Index=' + $scope.CurentIndex);
      if (confirm('Are you sure to delete?')) {
        var url = './models/project_files_del.php?files=';
        $http.post(url + data).success(function (data) {
          $scope.getProjectfiles();
        });
      }
    }

    //pdf read
    $scope.pdfName = 'PDFTron SDK';
    $scope.pdfUrl = 'public/project/data/' + $routeParams.files;
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

  .controller('projectUploadCtrl', ['$scope', '$http', '$routeParams', 'FileUploader', function ($scope, $http, $routeParams, FileUploader) {
    $scope.Title = 'Project Upload';
    $scope.projectID = $routeParams.projectID;
    $scope.projects = [];
    console.log('index=' + $scope.projectID);
    var uploader = ($scope.uploader = new FileUploader({
      url: 'models/project_upload.php?id=' + $scope.projectID,
    }));
    console.log('index' + uploader);
    // FILTERS
    uploader.filters.push({
      name: 'customFilter',
      fn: function (item /*{File|FileLikeObject}*/ , options) {
        return this.queue.length < 100;
      },
    });
    // CALLBACKS
    uploader.onWhenAddingFileFailed = function (
      item /*{File|FileLikeObject}*/ ,
      filter,
      options
    ) {
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

  .controller('projectTitleUploadCtrl', ['$scope', '$http', '$routeParams', 'FileUploader', function ($scope, $http, $routeParams, FileUploader) {
    $scope.Title = 'Project Title Upload';
    $scope.projectID = $routeParams.projectID;
    console.log('index=' + $scope.projectID);
    var uploader = ($scope.uploader = new FileUploader({
      url: 'models/project_title_upload.php?id=' + $scope.projectID,
    }));
    console.log('index' + uploader);
    // FILTERS
    uploader.filters.push({
      name: 'customFilter',
      fn: function (item /*{File|FileLikeObject}*/ , options) {
        return this.queue.length < 100; //default 100
      },
    });
    // CALLBACKS
    uploader.onWhenAddingFileFailed = function (
      item /*{File|FileLikeObject}*/ ,
      filter,
      options
    ) {
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