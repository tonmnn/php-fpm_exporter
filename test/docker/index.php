<?php

switch ($_SERVER['REQUEST_URI']) {
    // GET /sleep?duration=1
    case '/sleep':
        // Sleep for n seconds where the duration can be passed as query parameter "duration".
        // If the argument is not present, we sleep for 1 second.
        $time = (int) ($_GET['duration'] ?? 1);
        sleep($time);
        break;
    case default:
        echo 'Hello World!';
}
