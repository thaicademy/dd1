'use strict';
app.factory ('teacherService', function ($http, $routeParams) {
  return {
    getTeachers: function (callback) {
      $http.post ('./models/teacher_select.php').success (callback);
    },
    getTeacher: function (callback) {
      $http
        .post (
          './models/teacher_select_where.php?teacher_id=' + $routeParams.teacherID
        )
        .success (callback);
    },
  }
});
