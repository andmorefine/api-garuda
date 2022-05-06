class ProverbSynonymSerializer < ActiveModel::Serializer
  attributes :id,
             :title,
             :proverb_synonym_id,
             :created_time

  def created_time
    object.created_at.strftime("%Y年%m月%d日 %H時%M分")
  end

end
