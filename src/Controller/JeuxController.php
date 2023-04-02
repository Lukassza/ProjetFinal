<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/jeux')]
class JeuxController extends AbstractController
{
    
    #[Route('/gtfo', name: 'app_gtfo', methods: ['GET'])]
    public function gtfo(): Response
    {
        return $this->render('jeux/gtfo.html.twig', [
            'controller_name' => 'JeuxController',
        ]);
    }

    #[Route('/lol', name: 'app_lol', methods: ['GET'])]
    public function lol(): Response
    {
        return $this->render('jeux/lol.html.twig', [
            'controller_name' => 'JeuxController',
        ]);
    }

    #[Route('/mcdungeon', name: 'app_mcdungeon', methods: ['GET'])]
    public function mcdungeon(): Response
    {
        return $this->render('jeux/mcdungeon.html.twig', [
            'controller_name' => 'JeuxController',
        ]);
    }

}




