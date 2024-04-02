function generate_scattering_images(csv_file, output_folder, Fs, duration, label_mapping, filename)
    % Load CSV file into a table
    data_table = readtable(csv_file);

    % Calculate the number of samples per batch
    batch_size = Fs * duration;

    % Iterate over the CSV data in batches
    num_batches = ceil(height(data_table) / batch_size);
    for batch_idx = 1:num_batches
        % Extract the data for the current batch
        start_idx = (batch_idx - 1) * batch_size + 1;
        end_idx = min(start_idx + batch_size - 1, height(data_table));
        batch_data = data_table{start_idx:end_idx, 'values'};

        % Perform wavelet scattering on the current batch
        sf = waveletScattering('SignalLength', numel(batch_data), 'SamplingFrequency', Fs);
        [S, U] = scatteringTransform(sf, batch_data);
        
        batch_labels = data_table{start_idx:end_idx, 'label'};

        % Replace original labels with mapped integer values
        mapped_labels = zeros(size(batch_labels));
        for label_idx = 1:length(batch_labels)
            original_label = batch_labels{label_idx};
            if label_mapping.isKey(original_label)
                mapped_labels(label_idx) = label_mapping(original_label);
            else
                error(['Label "' original_label '" is not mapped to an integer.']);
            end
        end

        % Find the mode in the modified labels
        most_occuring_label = mode(mapped_labels);

        % Create subfolder based on the most occurring class
        label_folder = fullfile(output_folder, num2str(most_occuring_label));
        if ~exist(label_folder, 'dir')
            mkdir(label_folder);
        end
        % Create subfolder based on the most occurring class
        label_folder = fullfile(output_folder, string(most_occuring_label));
        if ~exist(label_folder, 'dir')
            mkdir(label_folder);
        end

        % Save the plot as an image in the corresponding label folder
        figure
        scattergram(sf, U, 'FilterBank', 1);
        axis off; title('');

        % Automatically adjust figure size to fit content
        set(gca, 'LooseInset', get(gca, 'TightInset'));

        output_filename = sprintf('batch_%d.png', batch_idx);
        output_filename = strcat(filename,output_filename);
        output_path = fullfile(label_folder, output_filename);
        % imwrite(img,output_path);
        saveas(gcf, output_path);
        close all;
    end
end
