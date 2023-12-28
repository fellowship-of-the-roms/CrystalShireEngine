from collections import defaultdict
import glob
import re

class ReferenceGraph:
    def __init__(self):
        self.defined_labels = set()
        self.referenced_labels = defaultdict(int)

    def add_label_definition(self, label):
        self.defined_labels.add(label)

    def add_label_reference(self, label):
        self.referenced_labels[label] += 1

    def find_unreferenced_labels(self):
        # Labels are unreferenced if they are defined but not referenced
        return {label for label in self.defined_labels if self.referenced_labels[label] == 0}

def is_valid_label(label):
    return not ('.' in label or \
           label.startswith('Tileset') or \
           label.endswith('_MapScripts') or \
           label.endswith('_MapEvents') or \
           label.endswith('_Blocks'))

def parse_asm_files():
    graph = ReferenceGraph()
    label_definition_pattern = re.compile(r"^\s*(\w+):{1,2}")

    for asm_file in glob.glob('**/*.asm', recursive=True):
        with open(asm_file, 'r') as file:
            current_label = None
            for line in file:
                label_match = label_definition_pattern.match(line)
                if label_match:
                    current_label = label_match.group(1)
                    if is_valid_label(current_label):
                        graph.add_label_definition(current_label)
                else:
                    words = re.findall(r'\b\w+\b', line)
                    for word in words:
                        if word != current_label and is_valid_label(word):
                            graph.add_label_reference(word)

    return graph

def main():
    graph = parse_asm_files()
    unreferenced_labels = graph.find_unreferenced_labels()
    for label in unreferenced_labels:
        print(label)

if __name__ == '__main__':
    main()
