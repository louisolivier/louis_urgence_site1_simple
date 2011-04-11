module PagesHelper
  def region
    base_region = "Montreal"
    if @region.nil?
      base_region
    else
      "#{@region}"
    end
  end
end
