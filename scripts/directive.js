'use  strict';
//angular.module('MyApp')
app.directive('activityDirective', function () {
        return {
            templateUrl: 'views/activity.html'
        }
    })
    .directive('footerDirective', function () {
        return {
            templateUrl: 'views/footer.html'
        }
    })
    .directive('headerDirective', function () {
        return {
            templateUrl: 'views/header.html'
        }
    })
    .directive('homeDirective', function () {
        return {
            templateUrl: 'views/home.html'
        }
    })
    .directive('newsDirective', function () {
        return {
            templateUrl: 'views/news.html'
        }
    })
    .directive('slideDirective', function () {
        return {
            templateUrl: 'views/slide.html'
        }
    })
    .directive('imagesDirective', function () {
        return {
            templateUrl: 'views/images.html'
        }
    })    
