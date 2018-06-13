'use strict';


angular


    .module('app', ['angularFileUpload'])


    .controller('ScoreUploadCtrl', ['$scope', 'FileUploader', function($scope, FileUploader) {
        var uploader = $scope.uploader = new FileUploader({
            url: 'upload.php'
        });

        $scope.working = () => {
            if (uploader) {
                return 'Working';
            } 
            return 'Not Working!'
        }

    }]);