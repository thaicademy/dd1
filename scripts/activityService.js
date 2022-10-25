'use  strict';

app.factory("activityService", function ($http, $routeParams) {

    return{
        getActivities: function (callback) {
            $http.post('models/activity_select.php').success(callback);
        },
        getActivity: function (callback) {
            console.log("ActivityID=", $routeParams.activityID);
            $http.post('models/activity_select_where.php?id='+$routeParams.activityID).success(callback);
        },
        getActivityImage: function (callback) {
            console.log("ActivityID IMG=", $routeParams.activityID);
            $http.post('models/activity_image_select.php?id='+$routeParams.activityID).success(callback);
        },
        
    };

});
