class Service
  attr_reader :title, :description

  class << self
    def all
      [
        new(title: 'Rédaction', description: %{
          <ul>
            <li>Rédaction Web optimisée</li>
            <li>Création de contenus médias sociaux</li>
            <li>Rédaction institutionnelle</li>
          </ul>
          <p>Obtenez des textes uniques qui répondent à vos exigences et aux besoins de votre entreprise.</p>
        }),

        new(title: 'Révision', description: %{
          <p>Bénéficiez d'une relecture approfondie et de la correction de vos textes pour mieux atteindre votre public cible et améliorer vos communications écrites.</p>
        }),

        new(title: 'Traduction', description: %{
          <p>Ciblez un plus vaste marché en faisant traduire vos textes (anglais ou français).</p>
        }),

        new(title: 'Consultation et coaching', description: %{
          <p>Perfectionnez vos communications écrites, établissez votre démarche rédactionnelle ou explorez votre côté créatif à l'aide d'outils créés sur mesure ou d'une simple consultation.</p>
        })
      ]
    end
  end

  def initialize(title:, description:)
    @title = title
    @description = description
  end
end
