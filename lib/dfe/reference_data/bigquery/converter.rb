module DfE
  module ReferenceData
    module BigQuery
      class Converter
        def self.convert_to_sqlite(output_file, tables)
          versioned_output_file = append_version_to_filename(output_file, DfE::ReferenceData::VERSION)

          db = SQLite3::Database.new(versioned_output_file)

          tables.each do |(table_name, list)|
            create_table_and_insert_records(db, table_name, list)
          end

          db.close
          puts "Data successfully converted to #{output_file}"
        end

        def self.append_version_to_filename(output_file, version)
          extname = File.extname(output_file)
          basename = File.basename(output_file, extname)
          dirname = File.dirname(output_file)
          "#{dirname}/#{basename}_#{version}#{extname}"
        end

        def self.create_table_and_insert_records(db, table_name, list)
          create_table_sql = generate_create_table_sql(table_name, list.schema)
          db.execute(create_table_sql)

          db.transaction do
            insert_records(db, table_name, list.all)
          end
        end

        def self.insert_records(db, table_name, records)
          records.each do |record|
            insert_record(db, table_name, record)
          end
        end

        def self.insert_record(db, table_name, record)
          columns = record.keys.map(&:to_s)
          placeholders = (['?'] * columns.size).join(',')
          insert_sql = "INSERT INTO #{table_name} (#{columns.join(',')}) VALUES (#{placeholders})"
          values = columns.map { |col| convert_value_for_sqlite(record[col.to_sym]) }
          db.execute(insert_sql, values)
        end

        def self.generate_create_table_sql(table_name, schema)
          columns = schema.map do |field_name, field_schema|
            field_type = field_schema.is_a?(Hash) ? field_schema[:kind] : field_schema
            "#{field_name} #{convert_to_sqlite_type(field_type)}"
          end
          "CREATE TABLE IF NOT EXISTS #{table_name} (#{columns.join(', ')})"
        end

        def self.convert_value_for_sqlite(value)
          case value
          when Array
            convert_array_for_sqlite(value)
          when Range
            convert_range_for_sqlite(value)
          when TrueClass, FalseClass
            convert_boolean_for_sqlite(value)
          else
            convert_basic_type_for_sqlite(value)
          end
        end

        def self.convert_basic_type_for_sqlite(value)
          case value
          when DateTime, Time
            convert_datetime_for_sqlite(value)
          when Hash
            convert_hash_for_sqlite(value)
          when NilClass
            nil
          else
            value.to_s
          end
        end

        def self.convert_to_sqlite_type(field_type)
          case field_type
          when 'boolean'
            'INTEGER'
          else
            'TEXT'
          end
        end

        def self.convert_array_for_sqlite(value)
          if value.all? { |v| [true, false].include?(v) }
            value.map { |v| v ? '1' : '0' }.join(',')
          else
            value.join(',')
          end
        end

        def self.convert_range_for_sqlite(value)
          "#{value.begin},#{value.end}"
        end

        def self.convert_boolean_for_sqlite(value)
          value ? '1' : '0'
        end

        def self.convert_datetime_for_sqlite(value)
          value.strftime('%Y-%m-%d %H:%M:%S')
        end

        def self.convert_hash_for_sqlite(value)
          value.map { |k, v| "#{k}=#{v}" }.join(',')
        end
      end
    end
  end
end
