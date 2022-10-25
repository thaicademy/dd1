var app = angular.module('MyApp', [
  'ngRoute',
  'ngAnimate',
  'ngSanitize',
  'ui.bootstrap',
  'ngStorage',
  'angularFileUpload',
  'textAngular',
  'colorpicker.module',
  'wysiwyg.module',
  'pdf'
]);

app.config(function ($routeProvider, $locationProvider) {
  $routeProvider
    .when('/', {
      controller: 'homeCtrl',
      templateUrl: 'views/home.html',
    })
    .when('/logout', {
      resolve: {
        deadResolve: function ($location, authService) {
          authService.clearData();
          $location.path('/');
        },
      },
    })
    .when('/login', {
      controller: 'loginCtrl',
      templateUrl: 'views/login.html',
    })
    .when('/dashboard', {
      resolve: {
        check: function ($location, authService) {
          if (!authService.isUserLoggedIn()) {
            $location.path('/login');
          }
        },
      },
      controller: 'dashboardCtrl',
      templateUrl: 'views/dashboard.html',
    })
    .when('/about', {
      controller: 'aboutCtrl',
      templateUrl: 'views/about.html',
    })
    .when('/activity', {
      controller: 'activityCtrl',
      templateUrl: 'views/activity.html',
    })
    .when('/activity/:activityID', {
      controller: 'activityDetailCtrl',
      templateUrl: 'views/activityDetail.html',
    })
    .when('/activityTitleUpload/:activityID', {
      controller: 'activityTitleUploadCtrl',
      templateUrl: 'views/activityTitleUpload.html',
    })
    .when('/activityUpload/:activityID', {
      controller: 'activityUploadCtrl',
      templateUrl: 'views/activityUpload.html',
    })
    .when('/curriculum', {
      controller: 'curriculumCtrl',
      templateUrl: 'views/curriculum.html',
    })
    .when('/course', {
      controller: 'courseCtrl',
      templateUrl: 'views/course.html',
    })
    .when('/course/:course_id', {
      controller: 'courseDetailCtrl',
      templateUrl: 'views/courseDetail.html',
    })
    .when('/course/:course_id/:unit_id', {
      controller: 'contentCtrl',
      templateUrl: 'views/courseContent.html',
    })
    .when('/download', {
      controller: 'downloadCtrl',
      templateUrl: 'views/download.html',
    })
    .when('/download/:downloadID', {
      controller: 'downloadDetailCtrl',
      templateUrl: 'views/downloadDetail.html',
    })
    .when('/downloadPdf/:downloadID/:files', {
      controller: 'downloadDetailCtrl',
      templateUrl: 'views/downloadPdf.html',
    })
    .when('/downloadTitleUpload/:downloadID', {
      controller: 'downloadTitleUploadCtrl',
      templateUrl: 'views/downloadTitleUpload.html',
    })
    .when('/downloadUpload/:downloadID', {
      controller: 'downloadUploadCtrl',
      templateUrl: 'views/downloadUpload.html',
    })
    .when('/internship', {
      controller: 'internshipCtrl',
      templateUrl: 'views/internship.html',
    })
    .when('/news', {
      controller: 'newsCtrl',
      templateUrl: 'views/news.html',
    })
    .when('/news/:newsID', {
      controller: 'newsDetailCtrl',
      templateUrl: 'views/newsDetail.html',
    }).when('/newsPdf/:newsID/:files', {
      controller: 'newsDetailCtrl',
      templateUrl: 'views/newsPdf.html',
    })
    .when('/newsTitleUpload/:newsID', {
      controller: 'newsTitleUploadCtrl',
      templateUrl: 'views/newsTitleUpload.html',
    })
    .when('/newsUpload/:newsID', {
      controller: 'newsUploadCtrl',
      templateUrl: 'views/newsUpload.html',
    })
    .when('/project', {
      controller: 'projectCtrl',
      templateUrl: 'views/project.html',
    })
    .when('/project/:projectID', {
      controller: 'projectDetailCtrl',
      templateUrl: 'views/projectDetail.html',
    })
    .when('/projectPdf/:projectID/:files', {
      controller: 'projectDetailCtrl',
      templateUrl: 'views/projectPdf.html',
    })
    .when('/projectUpload/:projectID', {
      controller: 'projectUploadCtrl',
      templateUrl: 'views/projectUpload.html',
    })
    .when('/teacher', {
      controller: 'teacherCtrl',
      templateUrl: 'views/teacher.html',
    })
    .when('/teacher/:teacherID', {
      controller: 'teacherDetailCtrl',
      templateUrl: 'views/teacherDetail.html',
    })
    .when('/teacherTitleUpload/:teacherID', {
      controller: 'teacherTitleUploadCtrl',
      templateUrl: 'views/teacherTitleUpload.html',
    })
    .when('/teacherUpload/:teacherID', {
      controller: 'teacherUploadCtrl',
      templateUrl: 'views/teacherUpload.html',
    })
    .when('/student_image/:student_id', {
      controller: 'studentImageCtrl',
      templateUrl: 'views/courseStudentUpload.html',
    })
    .when('/flickr', {
      controller: 'flickrCtrl',
      templateUrl: 'views/flickr.html',
    })
    .when('/newpassword', {
      controller: 'dashboardCtrl',
      templateUrl: 'views/newpassword.html',
    })
    .when('/gallery', {
      controller: 'galleryCtrl',
      templateUrl: 'views/gallery.html',
    })
    .when('/images', {
      controller: 'imagesCtrl',
      templateUrl: 'views/images.html',
    })
    .when('/training', {
      controller: 'trainingCtrl',
      templateUrl: 'views/training.html',
    })
    .when('/training/:id', {
      controller: 'trainingDetailCtrl',
      templateUrl: 'views/trainingDetail.html',
    })
    .when('/user', {
      controller: 'userCtrl',
      templateUrl: 'views/user.html',
    })
    .when('/user/:userID', {
      controller: 'userCtrl',
      templateUrl: 'views/userDetail.html',
    })
    .when('/userTitleUpload/:userID', {
    
      templateUrl: 'views/userTitleUpload.html',
    })
    .when('/wysiwyg', {
      templateUrl: 'views/wysiwyg.html',
    })
    .when('/pdf', {
        controller: 'docCtrl',
      templateUrl: 'views/pdf.html',
    })
    .otherwise({
      template: '404',
      //redirectTo: '/'
    });
  //$locationProvider.html5Mode(true);
});

app.filter('startFrom', function () {
  return function (input, start) {
    if (input) {
      start = +start; //parse to int
      return input.slice(start);
    }
    return [];
  };
});

//---------- ฟังก์ชั่น ตัดข้อความ -----------
app.filter('substring', function () {
  return function (str, start, end) {
    return str.substring(start, end);
  };
});
//-------------------------------------
app.directive('errSrc', function () {
  return {
    link: function (scope, element, attrs) {
      element.bind('error', function () {
        if (attrs.src != attrs.errSrc) {
          attrs.$set('src', attrs.errSrc);
        }
      });
    },
  };
});

//---------- ล็อกอินผ่าน facebook ----------
window.fbAsyncInit = function () {
  FB.init({
    appId: '1102161089896817',
    xfbml: true,
    version: 'v2.8',
  });
};

(function (d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) {
    return;
  }
  js = d.createElement(s);
  js.id = id;
  js.src = '//connect.facebook.net/en_US/sdk.js';
  fjs.parentNode.insertBefore(js, fjs);
})(document, 'script', 'facebook-jssdk');

/*
app.run(function ($rootScope, $location, loginService) {
    var routespermission = ['/home']; //route that require login
    $rootScope.$on('$routeChangeStart', function () {
        if (routespermission.indexOf($location.path()) != -1) {
            var connected = loginService.islogged();
            connected.then(function (msg) {
                if (!msg.data)
                    $location.path('/login');
            });

        }
    });
});
*/

app.run(function ($rootScope, authService) {
  $rootScope.authService = authService;
});

app.service('authService', function () {
  var username;
  var loggedin = false;
  var id;

  this.getName = function () {
    return username;
  };
  this.setID = function (userID) {
    id = userID;
  };
  this.getID = function () {
    return id;
  };
  this.isUserLoggedIn = function () {
    if (!!localStorage.getItem('login')) {
      loggedin = true;
      var data = JSON.parse(localStorage.getItem('login'));
      username = data.username;
      id = data.id;
    }
    return loggedin;
  };
  this.saveData = function (data) {
    console.log('Data = ' + data);
    username = data.user;
    id = data.id;
    loggedin = true;
    localStorage.setItem(
      'login',
      JSON.stringify({
        username: username,
        id: id,
      })
    );
  };
  this.clearData = function () {
    localStorage.removeItem('login');
    username = '';
    id = '';
    loggedin = false;
  };
});

app.controller('homeCtrl', function ($scope, $location) {
  $scope.goToLogin = function () {
    $location.path('/login');
  };
  $scope.regiser = function () {
    $location.path('/register');
  };
});

app.controller('loginCtrl', function ($scope, $http, $location, authService) {
  $scope.login = function () {
    var username = $scope.username;
    var password = $scope.password;
    $http({
      url: './models/server.php',
      method: 'POST',
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      data: 'username=' + username + '&password=' + password,
    }).then(function (response) {
      if (response.data.status == 'loggedin') {
        authService.saveData(response.data);
        $location.path('/dashboard');
      } else {
        alert('invalid login');
      }
    });
  };
});

app.controller('dashboardCtrl', function ($scope, authService, $http) {
  $scope.authService = authService.getName();
  $scope.newPass = function () {
    var password = $scope.newpassword;
    $http({
      url: './models/updatePass.php',
      method: 'POST',
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      data: 'newPass=' + password + '&id=' + authService.getID(),
    }).then(function (response) {
      if (response.data.status == 'done') {
        alert('Password updated');
      } else {
        alert('CSRF maybe?');
      }
    });
  };
});

app.controller('imagesCtrl', function ($scope) {
  $scope.images = images;
});