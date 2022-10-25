'usse strict';
app.controller("courseCtrl", ['$scope', '$http', 'courseService', function ($scope, $http, courseService) {
    $scope.CurrentView = "list";
    $scope.CurentIndex = -1;
    $scope.courses = [];
    $scope.course = [];
    $scope.frm = {
        course_id: "",
        title: "",
        description: "",
        credit: "",
        theory: "",
        practice: "",
        level: ""
    };
    //  $scope.tempCourseData = {};
    // function to get records from the database
    $scope.getCourses = function () {
        courseService.getCourses(function (data) {
            $scope.courses = data;
        })
    };
    /*
     $scope.getCourses = function () {
     $http.get('models/course.php', {
     params: {
     'type': 'view'
     }
     }).success(function (response) {
     if (response.status == 'OK') {
     $scope.courses = response.records;
     }
     });
     };
     */
    // function to get record from the database
    $scope.getCourse = function () {
        courseService.getCourse(function (data) {
            $scope.course = data;
        })
    };

    // function to insert or update user data to the database
    /*      $scope.saveCourse = function (type) {
     var data = $.param({
     'data': $scope.tempCourseData,
     'type': type
     });
     var config = {
     headers: {
     'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8;'
     }
     };
     $http.post("models/course.php", data, config).success(function (response) {
     if (response.status == 'OK') {
     if (type == 'edit') {
     $scope.courses[$scope.index].crs_id = $scope.tempCourseData.crs_id;
     $scope.courses[$scope.index].crs_title = $scope.tempCourseData.crs_title;
     $scope.courses[$scope.index].crs_description = $scope.tempCourseData.crs_description;
     $scope.courses[$scope.index].crs_credits = $scope.tempCourseData.crs_credits;
     $scope.courses[$scope.index].crs_level = $scope.tempCourseData.crs_level;
     } else {
     $scope.courses.push({
     crs_id: response.data.crs_id,
     crs_title: response.data.crs_title,
     crs_description: response.data.crs_description,
     crs_credits: response.data.crs_credits,
     crs_level: response.data.crs_level
     });
     
     }
     $scope.courseForm.$setPristine();
     $scope.tempCourseData = {};
     $('#div-editbox').slideUp("slow");
     $scope.messageSuccess(response.msg);
     } else {
     $scope.messageError(response.msg);
     }
     });
     };
     */
    // function to new  data
    $scope.newData = function () {
        $scope.CurentIndex = -1;
        $("#div-datatable").hide("slow");
        $("#div-editbox").show("slow");
    };
    // function to cancel  data
    $scope.cancelData = function () {
        $("#div-datatable").show("slow");
        $("#div-editbox").hide("slow");
    };

    // function to add  data
    $scope.addCourse = function () {
        $scope.saveCourse('add');
        $("#div-datatable").show("slow");
        $("#div-editbox").hide("slow");
    };

    // function to edit data
    /*     $scope.editCourse = function (course) {
     $scope.tempCourseData = {
     id: course.id,
     crs_id: course.crs_id,
     crs_title: course.crs_title,
     crs_description: course.crs_description,
     crs_credits: course.crs_credits,
     crs_level: course.crs_level
     };
     $scope.index = $scope.courses.indexOf(course);
     $('#div-editbox').slideDown("slow");
     };
     */
    // function to update  data
    /*      $scope.updateCourse = function () {
     $scope.saveCourse('edit');
     };
     */
    // function to delete  data from the database
    /*   $scope.deleteCourse = function (course) {
     var conf = confirm('Are you sure to delete?');
     if (conf === true) {
     var data = $.param({
     'crs_id': course.crs_id,
     'type': 'delete'
     });
     var config = {
     headers: {
     'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8;'
     }
     };
     $http.post("models/course.php", data, config).success(function (response) {
     if (response.status == 'OK') {
     var index = $scope.courses.indexOf(course);
     $scope.courses.splice(index, 1);
     $scope.messageSuccess(response.msg);
     } else {
     $scope.messageError(response.msg);
     }
     });
     }
     };
     */

    $scope.saveData = function ($params) {
        if ($scope.CurentIndex < 0) { //-1 New Mode   
            var url = "models/course_insert.php";
            $http.post(url, {
                    'course_id': $params.course_id,
                    'title': $params.title,
                    'description': $params.description,
                    'credit': $params.credit,
                    'theory': $params.theory,
                    'practice': $params.practice,
                    'level': $params.level
                })
                .success(function (data) {
                    $scope.getCourses();
                });
        } else { //Edit Mode 
            var url = "models/course_update.php?id=";
            $http.post(url + $scope.courses[$scope.CurentIndex].id, {
                    'course_id': $params.course_id,
                    'title': $params.title,
                    'description': $params.description,
                    'credit': $params.credit,
                    'theory': $params.theory,
                    'practice': $params.practice,
                    'level': $params.level
                })
                .success(function (data) {
                    $scope.getCourses();
                });
        }
        $scope.frm = {
            course_id: "",
            title: "",
            description: "",
            credit: "",
            theory: "",
            practice: "",
            level: ""
        };
        $("#div-datatable").show("slow");
        $("#div-editbox").hide("slow");
    };
    $scope.editData = function (data) {
        $scope.CurentIndex = $scope.courses.indexOf(data);
        $scope.frm.id = data.id;
        $scope.frm.course_id = data.course_id;
        $scope.frm.title = data.title;
        $scope.frm.description = data.description;
        $scope.frm.credit = data.credit;
        $scope.frm.theory = data.theory;
        $scope.frm.practice = data.practice;
        $scope.frm.level = data.level;
        $("#div-datatable").hide("slow");
        $("#div-editbox").show("slow");
    };
    $scope.deleteData = function (data) {
        $scope.CurentIndex = $scope.courses.indexOf(data);
        $scope.courses.splice($scope.CurentIndex, data);
        if (confirm("Are you sure to delete?")) {
            var url = "models/course_del.php?id=";
            $http.post(url + data.id)
                .success(function (data) {
                    $scope.getCourses();
                });
        }
    };

    // function to display success message
    $scope.messageSuccess = function (msg) {
        $('.alert-success > p').html(msg);
        $('.alert-success').show();
        $('.alert-success').delay(3000).slideUp(function () {
            $('.alert-success > p').html('');
        });
    };

    // function to display error message
    $scope.messageError = function (msg) {
        $('.alert-danger > p').html(msg);
        $('.alert-danger').show();
        $('.alert-danger').delay(3000).slideUp(function () {
            $('.alert-danger > p').html('');
        });
    };

}]);


app.controller("courseDetailCtrl", ["$scope", "$routeParams", "$http", "courseService", 'textAngularManager', function ($scope, $routeParams, $http, courseService, textAngularManager) {
    $scope.CurentIndex = -1;
    $scope.CurrentView = "list";

    $scope.course = [];
    $scope.contents = [];
    $scope.students = [];
    $scope.student = [];
    $scope.frm = {};

    $scope.getStudents = function () {
        courseService.getStudents(function (data) {
            $scope.students = data;
        })
    };
    $scope.getContents = function () {
        courseService.getContents(function (data) {
            $scope.contents = data;
        })
    };

    $scope.getStudent = function () {
        courseService.getStudent(function (data) {
            $scope.student = data;
        });
    };
    //-----------------------------------------
    $scope.studentsData = function () {
        $scope.getStudents();
        $("#div-detail").hide("slow");
        $("#div-form").hide("slow");
        //   $('#div-show').slideToggle("slow");
        $('#div-show').show("slow");
        $("#div-chkin").hide("slow");
        $("#div-content").hide("slow");
    };
    //------------------------------------------
    $scope.courseData = function () {
        courseService.getCourse(function (data) {
            $scope.course = data;
        })
        $("#div-detail").show("slow");
        $("#div-form").hide("slow");
        $("#div-show").hide("slow");
        $("#div-chkin").hide("slow");
        $("#div-content").hide("slow");
    };
    //------------------------------------------   
    $scope.addData = function (data) {
        $scope.CurentIndex = -1;
        $scope.frm.course_id = data.course_id;
        $scope.frm.title = data.title;
        // console.log("Course ID=" + data.crs_id);
        $("#div-detail").hide("slow");
        $("#div-form").show("slow");
        $("#div-show").hide("slow");
        $("#div-chkin").hide("slow");
        $("#div-content").hide("slow");
    };
    $scope.editData = function (data) {
        $scope.CurentIndex = $scope.students.indexOf(data);
        $scope.frm.course_id = data.course_id;
        $scope.frm.title = data.title;
        $scope.frm.student_id = data.student_id;
        $scope.frm.firstname = data.firstname;
        $scope.frm.lastname = data.lastname;
        $scope.frm.email = data.email;
        $scope.frm.phone = data.phone;
        $scope.frm.address = data.address;
        $("#div-detail").hide("slow");
        $("#div-form").show("slow");
        $("#div-show").hide("slow");
        $("#div-chkin").hide("slow");
        $("#div-content").hide("slow");
    };
    //------------------------------------------
    $scope.saveData = function ($params) {
        if ($scope.CurentIndex < 0) { //-1 New Mode   
            var url = "models/course_student_insert.php";
            $http.post(url, {
                    'course_id': $params.course_id,
                    'student_id': $params.student_id,
                    'firstname': $params.firstname,
                    'lastname': $params.lastname,
                    'email': $params.email,
                    'phone': $params.phone,
                    'address': $params.address
                })
                .success(function (data) {
                    $scope.getStudents();
                });
        } else { // Edit Mode 
            var url = "models/course_student_update.php?id=";
            $http.post(url + $scope.students[$scope.CurentIndex].id, {
                    'course_id': $params.course_id,
                    'student_id': $params.student_id,
                    'firstname': $params.firstname,
                    'lastname': $params.lastname,
                    'email': $params.email,
                    'phone': $params.phone,
                    'address': $params.address
                })
                .success(function (data) {
                    $scope.getStudents();
                });
        }
        $scope.frm = {
            course_id: "",
            student_id: "",
            firstname: "",
            lastname: "",
            email: "",
            phone: "",
            address: ""
        };
        $("#div-detail").hide("slow");
        $("#div-form").hide("slow");
        $("#div-show").show("slow");
        $("#div-chkin").hide("slow");
        $("#div-content").hide("slow");
    };
    //-------------------------------------------
    $scope.cancelData = function () {
        $scope.frm = {
            course_id: "",
            student_id: "",
            firstname: "",
            lastname: "",
            email: "",
            phone: "",
            address: ""
        };
        $("#div-detail").show("slow");
        $("#div-form").hide("slow");
        $("#div-show").hide("slow");
        $("#div-chkin").hide("slow");
        $("#div-content").hide("slow");
    };
    //-------------------------------------------
    $scope.deleteData = function (data) {
        $scope.CurentIndex = $scope.students.indexOf(data);
        $scope.students.splice($scope.CurentIndex, data);
        if (confirm("Are you sure to delete?")) {
            var url = "./models/course_student_del.php?id=";
            $http.post(url + data.id).success(function (data) {
                $scope.getStudents();
            });
        }
    };
    //----------------------------------------------
    $scope.checkinSave = function ($params) {
        if ($scope.CurentIndex < 0) { //-1 New Mode   
            var url = "models/course_checkin_insert.php";
            console.log("Data=", $params);
            $http.post(url, {
                    'course_id': $params.course_id,
                    'student_id': $params.student_id,
                    'status': $params.status
                })
                .success(function (data) {
                    $scope.chkinData();
                });
        } else { // Edit Mode 
            var url = "models/course_checkin_update.php?id=";
            $http.post(url + $scope.students[$scope.CurentIndex].id, {
                    'course_id': $params.course_id,
                    'student_id': $params.student_id,
                    'status': $params.status
                })
                .success(function (data) {
                    $scope.chkinData();
                });
        }
        //    $scope.frm = {stu_id: "", crs_id: "", chkin: ""};
        $("#div-detail").hide("slow");
        $("#div-form").hide("slow");
        $("#div-show").hide("slow");
        $("#div-chkin").show("slow");
        $("#div-content").hide("slow");
    };
    //---------------------------------------------
    $scope.checkinData = function () {
        $scope.getStudents();
        $("#div-detail").hide("slow");
        $("#div-form").hide("slow");
        $("#div-show").hide("slow");
        $("#div-chkin").show("slow");
        $("#div-content").hide("slow");
    };
    //----------------------------------------------
    // function to content
    $scope.addContent = function (data) {
        $scope.CurentIndex = -1;
        $scope.frm.course_id = data.course_id;
        //  $scope.frm.crs_title = data.crs_title;
        //  console.log("Course ID=" + data.crs_id);
        $("#div-detail").hide("slow");
        $("#div-form").hide("slow");
        $("#div-show").hide("slow");
        $("#div-chkin").hide("slow");
        $("#div-content").show("slow");
    };
    $scope.saveContent = function ($params) {
        //console.log("Course ID=" + $params.crs_id);
        if ($scope.CurentIndex < 0) { //-1 New Mode   
            var url = "models/course_content_insert.php";
            $http.post(url, {
                    'course_id': $params.course_id,
                    'unit_id': $params.unit_id,
                    'title': $params.title,
                    'description': $params.description,
                    'recommend': $params.recommend
                })
                .success(function (data) {
                    $scope.getContents();
                });
        } else { // Edit Mode 
            var url = "./models/course_content_update.php?id=";
            $http.post(url + $scope.contents[$scope.CurentIndex].id, {
                    'course_id': $params.course_id,
                    'unit_id': $params.unit_id,
                    'title': $params.title,
                    'description': $params.description,
                    'recommend': $params.recommend
                })
                .success(function (data) {
                    $scope.getContents();
                });
        }
        $scope.frm = {
            course_id: "",
            unit_id: "",
            title: "",
            description: "",
            recommend: ""
        };
        $("#div-detail").show("slow");
        $("#div-form").hide("slow");
        $("#div-show").hide("slow");
        $("#div-chkin").hide("slow");
        $("#div-content").hide("slow");
    };
    $scope.editContent = function (data) {
        $scope.CurentIndex = $scope.contents.indexOf(data);
        $scope.frm.course_id = data.course_id;
        $scope.frm.unit_id = data.unit_id;
        $scope.frm.title = data.title;
        $scope.frm.description = data.description;
        $scope.frm.recommend = data.recommend;
        $("#div-detail").hide("slow");
        $("#div-form").hide("slow");
        $("#div-show").hide("slow");
        $("#div-chkin").hide("slow");
        $("#div-content").show("slow");
    };
    $scope.delContent = function (data) {
        $scope.CurentIndex = $scope.contents.indexOf(data);
        $scope.contents.splice($scope.CurentIndex, data);
        if (confirm("Are you sure to delete?")) {
            var url = "./models/course_content_del.php?id=";
            $http.post(url + data.id).success(function (data) {
                $scope.getContents();
            });
        }
    };

}]);

app.controller('studentImageCtrl', ['$scope', '$http', '$routeParams', 'FileUploader', 'courseService', function ($scope, $http, $routeParams, FileUploader, courseService) {
    $scope.student = [];
    $scope.course = [];
    $scope.course_id = $routeParams.course_id; //แก้
    $scope.student_id = $routeParams.student_id; //แก้

    $scope.getStudent = function () {
        courseService.getStudent(function (data) {
            $scope.student = data;
        });
    };

    courseService.getCourse(function (data) {
        $scope.course = data;
    });

    console.log("index1=" + $scope.student_id);

    var uploader = $scope.uploader = new FileUploader({
        url: 'models/course_student_upload.php?student_id=' + $scope.student_id

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

app.controller('contentCtrl', ['$scope', '$http', '$routeParams', 'courseService', 'textAngularManager', function ($scope, $http, $routeParams, courseService, textAngularManager) {
    $scope.version = textAngularManager.getVersion();
    $scope.versionNumber = $scope.version.substring(1);
    $scope.htmlContent = '<h2>Try me!</h2><p>textAngular is a super cool WYSIWYG Text Editor directive for AngularJS</p><p><b>Features:</b></p><ol><li>Automatic Seamless Two-Way-Binding</li><li style="color: blue;">Super Easy <b>Theming</b> Options</li><li>Simple Editor Instance Creation</li><li>Safely Parses Html for Custom Toolbar Icons</li><li>Doesn&apos;t Use an iFrame</li><li>Works with Firefox, Chrome, and IE9+</li></ol><p><b>Code at GitHub:</b> <a href="https://github.com/fraywing/textAngular">Here</a> </p>';

    $scope.CurentIndex = -1;
    $scope.CurrentView = "list"; //
    $scope.course = [];
    $scope.contents = [];
    $scope.content = [];
    $scope.course_id = $routeParams.course_id; //แก้
    $scope.frm = {};

    $scope.getCourse = function () {
        courseService.getCourse(function (data) {
            $scope.course = data;
        });
    }
    $scope.getContents = function () {
        courseService.getContents(function (data) {
            $scope.contents = data;
        });
    }
    $scope.getContent = function () {
        courseService.getContent(function (data) {
            $scope.content = data;
        });
    };
    $scope.saveContent = function ($params) {
        //console.log("Course ID=" + $params.crs_id);
        if ($scope.CurentIndex < 0) { //-1 New Mode   
            var url = "models/course_content_insert.php";
            $http.post(url, {
                    'course_id': $params.course_id,
                    'unit_id': $params.unit_id,
                    'title': $params.title,
                    'description': $params.description,
                    'recommend': $params.recommend
                })
                .success(function (data) {
                    $scope.getContent();
                });
        } else { // Edit Mode 
            var url = "models/course_content_update.php?id=";
            $http.post(url + $scope.contents[$scope.CurentIndex].id, {
                    'course_id': $params.course_id,
                    'unit_id': $params.unit_id,
                    'title': $params.title,
                    'description': $params.description,
                    'recommend': $params.recommend
                })
                .success(function (data) {
                    $scope.getContent();
                });
        }
        $scope.frm = {
            course_id: "",
            unit_id: "",
            title: "",
            description: "",
            recommend: ""
        };
        $("#div-detail").show("slow");
        $("#div-content").hide("slow");
    };
    $scope.editContent = function (data) {
        $scope.CurentIndex = $scope.contents.indexOf(data);
        console.log(data);
        $scope.frm.course_id = data.course_id;
        $scope.frm.unit_id = data.unit_id;
        $scope.frm.title = data.title;
        $scope.frm.description = data.description;
        $scope.frm.recommend = data.recommend;
        $("#div-detail").hide("slow");
        $("#div-content").show("slow");
    };
    $scope.delContent = function (data) {
        $scope.CurentIndex = $scope.contents.indexOf(data);
        $scope.contents.splice($scope.CurentIndex, data);
        if (confirm("Are you sure to delete?")) {
            var url = "models/course_content_del.php?id=";
            $http.post(url + data.id).success(function (data) {
                $scope.getContents();
            });
        }
    };

    $scope.cancelData = function () {
        $scope.frm = {
            course_id: "",
            unit_id: "",
            title: "",
            description: "",
            recommend: ""
        };
        $("#div-detail").show("slow");
        $("#div-content").hide("slow");
    };

}]);