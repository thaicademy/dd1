'use  strict';

app.factory("projectService", function ($http, $routeParams) {
    return {
        getProjects: function (callback) {
            $http.post('./models/project_select.php').success(callback);
        },
        getProject: function (callback) {
            $http.post('./models/project_select_where.php?id=' + $routeParams.projectID).success(callback);
        },
        getProjectFiles: function (callback) {
            console.log("PID =",$routeParams.projectID)
            $http.post('./models/project_files_select.php?id=' + $routeParams.projectID).success(callback);
        }
    }
});