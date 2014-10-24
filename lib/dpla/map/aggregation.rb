module DPLA::MAP
  class Aggregation < ActiveTriples::Resource
    configure :type => RDF::ORE.Aggregation

    validates_presence_of :aggregatedCHO, :originalRecord, :isShownAt, :object, :provider

    property :aggregatedCHO, :predicate => RDF::EDM.aggregatedCHO, :class_name => 'DPLA::MAP::SourceResource'
    property :dataProvider, :predicate => RDF::EDM.dataProvider, :class_name => 'DPLA::MAP::Agent'
    property :originalRecord, :predicate => RDF::DPLA.originalRecord
    property :hasView, :predicate => RDF::EDM.hasView, :class_name => 'DPLA::MAP::WebResource'
    property :intermediateProvider, :predicate => RDF::DPLA.intermediateProvider, :class_name => 'DPLA::MAP::Agent'
    property :isShownAt, :predicate => RDF::EDM.isShownAt, :class_name => 'DPLA::MAP::WebResource'
    property :object, :predicate => RDF::EDM.object, :class_name => 'DPLA::MAP::WebResource'
    property :preview, :predicate => RDF::EDM.preview, :class_name => 'DPLA::MAP::WebResource'
    property :provider, :predicate => RDF::EDM.provider, :class_name => 'DPLA::MAP::Agent'
    property :rightsStatement, :predicate => RDF::EDM.rights, :class_name => 'DPLA::MAP::RightsStatement'
  end
end