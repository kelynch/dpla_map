module DPLA
  class Aggregation < ActiveTriples::Resource
    configure :type => RDF::ORE.Aggregation

    validates_presence_of :aggregatedSourceResource, :originalRecord, :isShownAt, :object, :provider

    property :aggregatedSourceResource, :predicate => RDF::EDM.aggregatedCHO, :class_name => 'DPLA::SourceResource'
    property :dataProvider, :predicate => RDF::EDM.dataProvider
    property :originalRecord, :predicate => RDF::DPLA.originalRecord
    property :hasView, :predicate => RDF::EDM.hasView, :class_name => 'DPLA::WebResource'
    property :intermediateProvider, :predicate => RDF::DPLA.intermediateProvider
    property :isShownAt, :predicate => RDF::EDM.isShownAt, :class_name => 'DPLA::WebResource'
    property :object, :predicate => RDF::EDM.object, :class_name => 'DPLA::WebResource'
    property :preview, :predicate => RDF::EDM.preview, :class_name => 'DPLA::WebResource'
    property :provider, :predicate => RDF::EDM.provider, :class_name => 'DPLA::Agent'
    property :rightsStatement, :predicate => RDF::EDM.rights, :class_name => 'DPLA::RightsStatement'

  end
end
