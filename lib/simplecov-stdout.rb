module SimpleCov
  module Formatter
    class STDOUTFormatter
      COLUMN_HEADERS = ["File",
                        "% covered",
                        "Lines",
                        "Relevant lines",
                        "Lines covered",
                        "Lines missed",
                        "Avg. Hits/Line"]
      COLUMN_SPACING = 3

      def format(result)
        column_widths = COLUMN_HEADERS.map { |e| e.size + COLUMN_SPACING }
        column_widths[0] = pad(result.files)
        column_widths[-1] = COLUMN_HEADERS[-1].size

        output = [summary(result)]
        output << file_line(column_widths, COLUMN_HEADERS)
        output << file_coverage(column_widths, result.files)
        output << "=" * 80
        puts output.join("\n")
      end

      private

      def summary(result)
        total_coverage = result.covered_percent.round(2)
        total_strength = result.covered_strength.round(2)
        num_files = result.files.size
        total_lines = result.total_lines
        covered_lines = result.covered_lines
        missed_lines = result.missed_lines

        <<~SUMMARY

        #{"=" * 80}
        All files (#{total_coverage}% covered at #{total_strength} hits/line)

        #{num_files} files in total. #{total_lines} relevant lines. #{covered_lines} lines covered and #{missed_lines} lines missed
        SUMMARY
      end

      def file_line(widths, columns)
        columns.zip(widths).map { |tuple| tuple[0].ljust(tuple[1]) }.join
      end

      def pad(files)
        files.max_by { |f| f.project_filename.size }.
          project_filename.size + COLUMN_SPACING
      end

      def file_coverage(widths, files)
        output = []

        files.each do |r|
          columns = [r.project_filename[1..-1],
                     r.covered_percent.round(2).to_s,
                     r.build_lines.size.to_s,
                     r.relevant_lines.to_s,
                     r.covered_lines.size.to_s,
                     r.missed_lines.size.to_s,
                     r.covered_strength.to_s]

          output << file_line(widths, columns)
        end

        output.join("\n")
      end
    end
  end
end
