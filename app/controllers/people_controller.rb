class PeopleController < CrudController
  self.permitted_attrs = [:birthdate, :picture, :language, :location, :martial_status,
                          :updated_by, :name, :origin, :role, :title, :status_id]

  self.nested_models = [:advanced_trainings, :activities, :projects,
                        :educations, :competences]
  def index
    people = fetch_entries
    people = people.search(params[:q]) if params[:q].present?

    render json: people, each_serializer: PeopleSerializer
  end

  def show
    format_odt? ? export : super
  end
  
  def update_picture
    person = Person.find(params[:person_id])
    person.update_attributes(picture: params[:picture])
    render json: {data: { picture_path: person_picture_path(params[:person_id])}}
  end

  def picture
    person = Person.find(params[:person_id])
    send_file(person.picture.url, disposition: "inline")
  end

  private

  def export
    person = Person.find(params[:id])
    odt_file = person.export
    send_data odt_file.generate,
      type: 'application/vnd.oasis.opendocument.text',
      disposition: 'attachment',
      filename: filename(person.name)
  end

  def filename(name)
    "#{name.downcase.tr(' ', '_')}_cv.odt"
  end

  def format_odt?
    response.request.filtered_parameters['format'] == 'odt'
  end
end
