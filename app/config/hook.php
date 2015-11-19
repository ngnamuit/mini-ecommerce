<?php
use Sifoni\Application;
use Symfony\Component\HttpFoundation\Request;
$app = \Sifoni\Engine::getInstance()->getApp();
$app->register(new Cocur\Slugify\Bridge\Silex\SlugifyServiceProvider());
// Hook anything you want :)
//limitword
$app['twig'] = $app->share($app->extend('twig', function($twig, $app) {
    $filter = new Twig_SimpleFilter('limitword', function ($text, $limit) {
        $max = $limit * 6;
        $tokens = explode(' ', substr($text, 0, $max));//substr là hàm cắc chuỗi
        if(count($tokens) > $limit)
        return (implode(' ', array_slice($tokens, 0, $limit)).'...');
        else
             return (implode(' ', array_slice($tokens, 0, $limit)));
        //array_slice là hàm tách mảng
        //implode là hàm nổi mảng
    });
    $twig->addFilter($filter);
    return $twig;
}));

function buildTree(array $elements, $parentId = 0, $parent_id_field = 'parent_id') {
    $branch = array();

    foreach ($elements as $element) {
        if ($element[$parent_id_field] == $parentId) {
            $children = buildTree($elements, $element['id']);
            $element['children'] = empty($children) ? [] : $children;
            
            $branch[] = $element;
        }
    }
    return $branch;
}

$app->before(function (Request $request, Application $app) {

    $request->setDefaultLocale($app['config.app.languages'][0]);
    $app['request_context']->setParameter('_locale', $request->getLocale());
    // dump($request);
}, 8); // 1 - 15
