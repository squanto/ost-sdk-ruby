module OSTSdk

  module Saas

    class TransactionKind < OSTSdk::Saas::Base

      # Initialize
      #
      # Arguments:
      #   environment: (String)
      #   credentials: (OSTSdk::Util::APICredentials)
      #   api_spec: (Boolean)
      #
      def initialize(environment, credentials, api_spec = false)
        super
        @url_prefix = '/transaction-types'
      end

      # Fetches the list of all transaction types
      #
      # Returns:
      #   response: (OSTSdk::Util::Result)
      #
      def list(params = {})
        http_helper.send_get_request("#{@url_prefix}/list", params)
      end

      # Creates a new transaction type
      #
      # Arguments:
      #   params: (Hash)
      #
      # Returns:
      #   response: (OSTSdk::Util::Result)
      #
      def create(params)
        http_helper.send_post_request("#{@url_prefix}/create", params)
      end

      # Updates an existing transaction type
      #
      # Arguments:
      #   params: (Hash)
      #
      # Returns:
      #   response: (OSTSdk::Util::Result)
      #
      def edit(params)
        http_helper.send_post_request("#{@url_prefix}/edit", params)
      end

      # Execute transfer BT by tx kind
      #
      # Arguments:
      #   params: (Hash)
      #
      # Returns:
      #   response: (OSTSdk::Util::Result)
      #
      def execute(params)
        http_helper.send_post_request("#{@url_prefix}/execute", params)
      end

      # Get details of a transaction(s)
      #
      # Arguments:
      #   params: (Hash)
      #
      # Returns:
      #   response: (OSTSdk::Util::Result)
      #
      def status(params)
        http_helper.send_post_request("#{@url_prefix}/status", params)
      end

    end

  end

end
