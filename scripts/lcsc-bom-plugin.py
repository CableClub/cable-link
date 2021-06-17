#!/usr/bin/env python3

import sys
import csv
import xml.etree.ElementTree as ET

class Part:

    def __init__(self):
        self.name = None
        self.mpn = None
        self.lcsc = None
        self.qty = 1

def parse_xml(file):

    tree = ET.parse(file)
    root = tree.getroot()

    part_list = []
    missing = []

    for f in root.findall('./components/'):
        name = f.attrib['ref']
        fields = f.find('fields')

        part = Part()
        part.name = name

        if fields is not None:
            for x in fields:
                if x.attrib['name'].upper() == 'LCSC':
                    part.lcsc = x.text

                if x.attrib['name'].upper() == 'MPN':
                    part.mpn = x.text
        
        if part.mpn is None and part.lcsc is None:
            missing.append(part.name)
            continue

        exist = next((p for p in part_list if p.mpn == part.mpn and p.lcsc == part.lcsc), None)

        if exist is not None:
            exist.qty += 1
            continue
        else:
            part_list.append(part)

    return part_list, missing


def write_bom(file, part_list):
    column_headers = ['Quantity', 'Manufacture Part Number', 'LCSC Part Number']

    with open("{}.csv".format(file), 'w') as csvfile:
        bom = csv.DictWriter(csvfile, fieldnames=column_headers, delimiter=',',
                                   quotechar='"', quoting=csv.QUOTE_MINIMAL)
        bom.writeheader()

        for part in sorted(part_list):
            bom.writerow({'Quantity': part.qty,
                                'Manufacture Part Number': part.mpn,
                                'LCSC Part Number': part.lcsc})

if __name__ == "__main__":
    input_file = sys.argv[1]
    output_file = sys.argv[2]

    part_list, missing = parse_xml(input_file)
    write_bom(output_file, part_list)

    if len(missing) > 0:
        print("Ignoring parts:")
        print(",".join(missing))

