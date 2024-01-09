import os
import re
from collections import Counter

def find_asm_files(directory):
    """Recursively find all *.asm files in the given directory."""
    asm_files = []
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith(".asm"):
                asm_files.append(os.path.join(root, file))
    return asm_files

def count_labels(asm_files):
    """Count occurrences of labels that are called."""
    label_pattern = re.compile(r'\tcall (\w+)')
    label_counter = Counter()

    for file in asm_files:
        with open(file, 'r', encoding='utf-8') as f:
            for line in f:
                match = label_pattern.search(line)
                if match:
                    label_counter[match.group(1)] += 1

    return label_counter

# Start the search in the current directory
current_directory = os.getcwd()
asm_files = find_asm_files(current_directory)

# Count the labels
label_counts = count_labels(asm_files)

# Print the most called labels
for label, count in label_counts.most_common():
    print(f'{label}: {count}')

