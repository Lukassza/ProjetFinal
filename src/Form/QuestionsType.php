<?php

namespace App\Form;

use App\Entity\User;
use App\Entity\Questions;
use App\Entity\Categories;
use Symfony\Component\Form\AbstractType;
use Symfony\Bundle\SecurityBundle\Security;
// use Symfony\Component\Security\Core\Security;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\HiddenType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;

class QuestionsType extends AbstractType
{

    private $security;

    public function __construct(Security $security)
    {
        $this->security = $security;
    }

    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
        ->add('texte', TextareaType::class)
        ->add('categorie', EntityType::class, [
            'class' => Categories::class,
            'choice_label' => 'nom',
        ]);
        
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Questions::class,
        ]);
    }
}
