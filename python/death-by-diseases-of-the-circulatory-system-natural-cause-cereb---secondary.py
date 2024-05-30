# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"I61.3","system":"icd10"},{"code":"I67.2","system":"icd10"},{"code":"I67.1","system":"icd10"},{"code":"I69.8","system":"icd10"},{"code":"I61.9","system":"icd10"},{"code":"I69.4","system":"icd10"},{"code":"I67.5","system":"icd10"},{"code":"I67.7","system":"icd10"},{"code":"I61.6","system":"icd10"},{"code":"I69.2","system":"icd10"},{"code":"I67.8","system":"icd10"},{"code":"I63.3","system":"icd10"},{"code":"I63.4","system":"icd10"},{"code":"I67.0","system":"icd10"},{"code":"I68.8","system":"icd10"},{"code":"I67.4","system":"icd10"},{"code":"I69","system":"icd10"},{"code":"I61.2","system":"icd10"},{"code":"I63","system":"icd10"},{"code":"I69.1","system":"icd10"},{"code":"I61.0","system":"icd10"},{"code":"I61.8","system":"icd10"},{"code":"I68.1","system":"icd10"},{"code":"I67.3","system":"icd10"},{"code":"I63.8","system":"icd10"},{"code":"I67","system":"icd10"},{"code":"I63.9","system":"icd10"},{"code":"I68","system":"icd10"},{"code":"I69.0","system":"icd10"},{"code":"I61.1","system":"icd10"},{"code":"I69.3","system":"icd10"},{"code":"I67.9","system":"icd10"},{"code":"I61.4","system":"icd10"},{"code":"I61","system":"icd10"},{"code":"I68.2","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-diseases-of-the-circulatory-system-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-diseases-of-the-circulatory-system-natural-cause-cereb---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-diseases-of-the-circulatory-system-natural-cause-cereb---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-diseases-of-the-circulatory-system-natural-cause-cereb---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
