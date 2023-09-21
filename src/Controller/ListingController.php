<?php

namespace App\Controller;

use App\Repository\ListingRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ListingController extends AbstractController
{
    #[Route('/listing', name: 'app_listing')]
//     public function index(ListingRepository $listingRepository): Response
//     {
//         return $this->render('listing/index.html.twig', [
//             'listings' => $listingRepository->findAll([], ['listeOrder' => 'asc'])
//         ]);
//     }
// }

public function index(): Response
{
    return $this->render('listing/index.html.twig', [
        'controller_name' => 'ListingController',
    ]);
}

}