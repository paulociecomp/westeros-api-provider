require 'pact/provider/rspec'
require './spec/provider_states'

Pact.service_provider "WesterosProvider" do

  # app { Westeros::Api.new }

  honours_pact_with 'WesterosConsumer' do
    # This example points to a local file, however, on a real project with a continuous
    # integration box, you would use a [Pact Broker](https://github.com/pact-foundation/pact_broker) or publish your pacts as artifacts,
    # and point the pact_uri to the pact published by the last successful build.

    pact_uri '../pact-consumer-test/pacts/westerosconsumer-westerosprovider.json'
  end
end
