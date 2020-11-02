=begin
#Mailchimp Marketing API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0.23
Contact: apihelp@mailchimp.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module MailchimpMarketing
  class TemplatesApi
    attr_accessor :api_client

    def initialize(api_client)
      @api_client = api_client
    end

    # Delete template
    def delete_template(template_id, opts = {})
      fail ArgumentError, "Missing required param: 'template_id'" if template_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/templates/{template_id}'.sub('{' + 'template_id' + '}', template_id.to_s)
      data = @api_client.call_api(:DELETE, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # List templates
    def list(opts = {})
      fail ArgumentError, 'invalid value for "opts[:"count"]", must be smaller than or equal to 1000.' if !opts[:'count'].nil? && opts[:'count'] > 1000
      fail ArgumentError, 'invalid value for "sort_field", must be one of date_created, name' if opts[:'sort_field'] && !['date_created', 'name'].include?(opts[:'sort_field'])

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'created_by'] = opts[:'created_by'] if !opts[:'created_by'].nil?
      query_params[:'since_created_at'] = opts[:'since_created_at'] if !opts[:'since_created_at'].nil?
      query_params[:'before_created_at'] = opts[:'before_created_at'] if !opts[:'before_created_at'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'category'] = opts[:'category'] if !opts[:'category'].nil?
      query_params[:'folder_id'] = opts[:'folder_id'] if !opts[:'folder_id'].nil?
      query_params[:'sort_field'] = opts[:'sort_field'] if !opts[:'sort_field'].nil?
      post_body = nil

      local_var_path = '/templates'
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Get template info
    def get_template(template_id, opts = {})
      fail ArgumentError, "Missing required param: 'template_id'" if template_id.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/templates/{template_id}'.sub('{' + 'template_id' + '}', template_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # View default content
    def get_default_content_for_template(template_id, opts = {})
      fail ArgumentError, "Missing required param: 'template_id'" if template_id.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/templates/{template_id}/default-content'.sub('{' + 'template_id' + '}', template_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Update template
    def update_template(template_id, body, opts = {})
      fail ArgumentError, "Missing required param: 'template_id'" if template_id.nil?
      fail ArgumentError, "Missing required param: 'body'" if body.nil?

      query_params = {}
      post_body = @api_client.object_to_http_body(body)

      local_var_path = '/templates/{template_id}'.sub('{' + 'template_id' + '}', template_id.to_s)
      data = @api_client.call_api(:PATCH, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Add template
    def create(body, opts = {})
      fail ArgumentError, "Missing required param: 'body'" if body.nil?

      query_params = {}
      post_body = @api_client.object_to_http_body(body)

      local_var_path = '/templates'
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end
  end
end
