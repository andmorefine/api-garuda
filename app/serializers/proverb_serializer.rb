class ProverbSerializer < ActiveModel::Serializer
  has_many :proverb_synonyms, key: :synonyms, serializer: ProverbSynonymSerializer do
    object.proverb_synonyms.recent
  end

  attributes :id,
             :name,
             :kana,
             :text,
             :image,
             :order,
             :alphabetal_id,
             :delete_flag

end
