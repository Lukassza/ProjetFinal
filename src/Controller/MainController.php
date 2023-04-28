<?php

namespace App\Controller;

use App\Repository\VideosRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class MainController extends AbstractController
{
    #[Route('/', name: 'app_main')]
    public function index(VideosRepository $videosRepository): Response
    {
        return $this->render('main/index.html.twig', [
            'controller_name' => 'MainController',
            $videos = $videosRepository->findLatest(),
            'videos' => $videos,
        ]);
    }
}
