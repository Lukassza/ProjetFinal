<?php

namespace App\Controller\Admin;

use App\Entity\Videos;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class VideosCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Videos::class;
    }

   
    public function configureFields(string $pageName): iterable
    {
        return [
            
            TextField::new('titre'),
            TextField::new('lien'),
            TextField::new('description'),
            AssociationField::new('categorie')
           
        ];
    }
    
}
