class AddIndexToZips < ActiveRecord::Migration
  def change
  end

  def up
  	Zip.collection.indexes.create_one({:loc => Mongo::Index::GEO2DSPHERE})
  end
  def down
  	Zip.collection.indexes.drop_one("loc_2dsphere")
  end
end
