'use strict';
//courseService
app.factory("courseService", function ($http, $routeParams) {

    return{
        getCourses: function (callback) {
            $http.post('./models/course_select.php').success(callback);
        },
        getCourse: function (callback) {
            console.log("Call=", $routeParams.course_id);
            $http.post('./models/course_select_where.php?course_id=' + $routeParams.course_id).success(callback);
        },
         getContents: function (callback) {
            console.log("COURSE=", $routeParams.course_id);
            $http.post('./models/course_content_select.php?course_id=' + $routeParams.course_id).success(callback);
        },
         getContent: function (callback) {
            console.log("COURSE=", $routeParams.course_id);
             console.log("UNIT=", $routeParams.unit_id);
            $http.post('./models/course_content_select_where.php?course_id=' + $routeParams.course_id+'&unit_id='+$routeParams.unit_id).success(callback);
        },
        getStudents: function (callback) {
            $http.post('./models/course_student_select_where.php?course_id=' + $routeParams.course_id).success(callback);
        },        
        getStudent: function (callback) {
            $http.post('./models/course_student_select_where.php?student_id=' + $routeParams.student_id).success(callback);
        }
    };

});
