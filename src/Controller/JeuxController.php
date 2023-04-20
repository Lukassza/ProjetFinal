<?php

namespace App\Controller;

use App\Repository\VideosRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

#[Route('/jeux')]
class JeuxController extends AbstractController
{
    
    #[Route('/gtfo', name: 'app_gtfo', methods: ['GET'])]
    public function gtfo(VideosRepository $videosRepository): Response
    {
        return $this->render('jeux/gtfo.html.twig', [
            'controller_name' => 'JeuxController',
            $videos= $videosRepository->findLatestGtfo(),
            'videos'=>$videos,
        ]);
    }

    #[Route('/lol', name: 'app_lol', methods: ['GET'])]
    public function lol(VideosRepository $videosRepository): Response
    {
        return $this->render('jeux/lol.html.twig', [
            'controller_name' => 'JeuxController',
            $videos= $videosRepository->findLatestLol(),
            'videos'=>$videos,
        ]);
    }

    #[Route('/mcdungeon', name: 'app_mcdungeon', methods: ['GET'])]
    public function mcdungeon(VideosRepository $videosRepository): Response
    {
        return $this->render('jeux/mcdungeon.html.twig', [
            'controller_name' => 'JeuxController',
            $videos= $videosRepository->findLatestMcdungeon(),
            'videos'=>$videos,
        ]);
    }

}




