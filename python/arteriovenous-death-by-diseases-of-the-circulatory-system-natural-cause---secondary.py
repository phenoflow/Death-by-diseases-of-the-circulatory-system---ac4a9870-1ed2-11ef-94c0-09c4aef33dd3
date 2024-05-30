# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"I63.2","system":"icd10"},{"code":"I66.9","system":"icd10"},{"code":"I66.3","system":"icd10"},{"code":"I66.1","system":"icd10"},{"code":"I65.8","system":"icd10"},{"code":"I82","system":"icd10"},{"code":"I65","system":"icd10"},{"code":"I66","system":"icd10"},{"code":"I63.5","system":"icd10"},{"code":"I82.9","system":"icd10"},{"code":"I82.2","system":"icd10"},{"code":"I65.2","system":"icd10"},{"code":"I82.8","system":"icd10"},{"code":"I65.9","system":"icd10"},{"code":"I82.0","system":"icd10"},{"code":"I82.3","system":"icd10"},{"code":"I82.1","system":"icd10"},{"code":"I66.2","system":"icd10"},{"code":"I66.8","system":"icd10"},{"code":"I87.2","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-diseases-of-the-circulatory-system-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["arteriovenous-death-by-diseases-of-the-circulatory-system-natural-cause---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["arteriovenous-death-by-diseases-of-the-circulatory-system-natural-cause---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["arteriovenous-death-by-diseases-of-the-circulatory-system-natural-cause---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
