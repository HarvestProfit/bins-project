class Api::MeasurementsController < ApplicationController
  skip_forgery_protection

  def index
    measurements = Measurement.all
    render json: measurements
  end

  def create
    measurement = Measurement.create(
      outside: params[:outside],
      inside: params[:inside],
      bin_id: params[:bin_id]
    )
    render json: measurement
  end

  def delete
    measurement = Measurement.find(params[:id])
    measurement.destroy
  end

  def update
    measurement = Measurement.find(params[:id])
    measurement.outside = params[:outside]
    measurement.inside = params[:inside]
    measurement.bin_id = params[:bin_id]
    measurement.save!
    render json: measurement
  end
end
