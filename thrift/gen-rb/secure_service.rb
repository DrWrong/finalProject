#
# Autogenerated by Thrift Compiler (0.9.1)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 'common_service'
require 'thrift_interface_types'

module SecureService
  class Client < ::CommonService::Client 
    include ::Thrift::Client

    def encrypted(commonRequest, plainText)
      send_encrypted(commonRequest, plainText)
      return recv_encrypted()
    end

    def send_encrypted(commonRequest, plainText)
      send_message('encrypted', Encrypted_args, :commonRequest => commonRequest, :plainText => plainText)
    end

    def recv_encrypted()
      result = receive_message(Encrypted_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'encrypted failed: unknown result')
    end

    def decrypted(commonRequest, cipherText, key)
      send_decrypted(commonRequest, cipherText, key)
      return recv_decrypted()
    end

    def send_decrypted(commonRequest, cipherText, key)
      send_message('decrypted', Decrypted_args, :commonRequest => commonRequest, :cipherText => cipherText, :key => key)
    end

    def recv_decrypted()
      result = receive_message(Decrypted_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'decrypted failed: unknown result')
    end

  end

  class Processor < ::CommonService::Processor 
    include ::Thrift::Processor

    def process_encrypted(seqid, iprot, oprot)
      args = read_args(iprot, Encrypted_args)
      result = Encrypted_result.new()
      result.success = @handler.encrypted(args.commonRequest, args.plainText)
      write_result(result, oprot, 'encrypted', seqid)
    end

    def process_decrypted(seqid, iprot, oprot)
      args = read_args(iprot, Decrypted_args)
      result = Decrypted_result.new()
      result.success = @handler.decrypted(args.commonRequest, args.cipherText, args.key)
      write_result(result, oprot, 'decrypted', seqid)
    end

  end

  # HELPER FUNCTIONS AND STRUCTURES

  class Encrypted_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    COMMONREQUEST = 1
    PLAINTEXT = 2

    FIELDS = {
      COMMONREQUEST => {:type => ::Thrift::Types::STRUCT, :name => 'commonRequest', :class => ::CommonRequest},
      PLAINTEXT => {:type => ::Thrift::Types::STRING, :name => 'plainText'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Encrypted_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRING, :name => 'success'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Decrypted_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    COMMONREQUEST = 1
    CIPHERTEXT = 2
    KEY = 3

    FIELDS = {
      COMMONREQUEST => {:type => ::Thrift::Types::STRUCT, :name => 'commonRequest', :class => ::CommonRequest},
      CIPHERTEXT => {:type => ::Thrift::Types::STRING, :name => 'cipherText'},
      KEY => {:type => ::Thrift::Types::STRING, :name => 'key'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Decrypted_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRING, :name => 'success'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

end

