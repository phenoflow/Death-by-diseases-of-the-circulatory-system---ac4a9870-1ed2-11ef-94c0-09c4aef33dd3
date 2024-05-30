cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  myocardal-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: myocardal-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: myocardal-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-cereb---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-cereb---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  idiopathic-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: idiopathic-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-cereb---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-insufficiency---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-insufficiency---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: idiopathic-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-haemopericardium---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-haemopericardium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-insufficiency---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-arteriole---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-arteriole---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-haemopericardium---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-unspec---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-unspec---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-arteriole---secondary/output
  hypertrophic-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: hypertrophic-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-unspec---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-described---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-described---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: hypertrophic-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  cardiovascular-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: cardiovascular-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-described---secondary/output
  arteriovenous-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: arteriovenous-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: cardiovascular-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-hypertension---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-hypertension---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: arteriovenous-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-arteritis---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-arteritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-hypertension---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-subacute---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-subacute---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-arteritis---secondary/output
  portal-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: portal-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-subacute---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-steno---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-steno---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: portal-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  capillary-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: capillary-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-steno---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-folow---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-folow---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: capillary-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-inferior---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-inferior---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-folow---secondary/output
  pulmonary-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: pulmonary-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-inferior---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-arrhythmia---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-arrhythmia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: pulmonary-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-endocarditis---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-endocarditis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-arrhythmia---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-lymphoedema---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-lymphoedema---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-endocarditis---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-fistula---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-fistula---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-lymphoedema---secondary/output
  infective-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: infective-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-fistula---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-disord---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-disord---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: infective-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-specified---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-disord---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-nonruptured---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-nonruptured---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-specified---secondary/output
  oesophageal-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: oesophageal-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-nonruptured---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-failure---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-failure---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: oesophageal-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  multiple-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: multiple-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-failure---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-lymph---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-lymph---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: multiple-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  mesenteric-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: mesenteric-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-lymph---secondary/output
  parasitic-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: parasitic-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: mesenteric-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-pectoris---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-pectoris---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: parasitic-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-extremty---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-extremty---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-pectoris---secondary/output
  nontraumatic-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: nontraumatic-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-extremty---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-description---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-description---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: nontraumatic-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  intraventricular-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: intraventricular-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-description---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-artery---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-artery---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: intraventricular-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  chronic-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: chronic-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-artery---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-conduction---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-conduction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: chronic-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-chorea---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-chorea---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-conduction---secondary/output
  cardiomyopathy-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: cardiomyopathy-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-chorea---secondary/output
  basilar-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: basilar-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: cardiomyopathy-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-aorta---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-aorta---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: basilar-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  nonrheumatic-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: nonrheumatic-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-aorta---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-arrest---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-arrest---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: nonrheumatic-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  fascicular-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: fascicular-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-arrest---secondary/output
  external-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: external-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: fascicular-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-posterior---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-posterior---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: external-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-stroke---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-stroke---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-posterior---secondary/output
  arterial-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: arterial-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-stroke---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-compression---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-compression---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: arterial-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  intracranial-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: intracranial-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-compression---secondary/output
  nonpyogenic-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: nonpyogenic-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: intracranial-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-vessl---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-vessl---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: nonpyogenic-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-flutter---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-flutter---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-vessl---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-atherosclerosis---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-atherosclerosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-flutter---secondary/output
  vertebral-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: vertebral-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-atherosclerosis---secondary/output
  vascular-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: vascular-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: vertebral-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-myocard---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-myocard---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: vascular-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-pericarditis---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-pericarditis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-myocard---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-iliac---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-iliac---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-pericarditis---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-thrombosed---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-thrombosed---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-iliac---secondary/output
  haemorrhoid-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: haemorrhoid-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-thrombosed---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-inflamm---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-inflamm---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: haemorrhoid-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-hypotension---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-hypotension---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-inflamm---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-chordae---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-chordae---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-hypotension---secondary/output
  angiopathy-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: angiopathy-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-chordae---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-depolarization---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-depolarization---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: angiopathy-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  secondary-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: secondary-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-depolarization---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-muscle---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-muscle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: secondary-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-classified---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-classified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-muscle---secondary/output
  coronary-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: coronary-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-classified---secondary/output
  bacterial-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: bacterial-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: coronary-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-forms---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-forms---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: bacterial-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-vessel---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-vessel---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-forms---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-mention---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-mention---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-vessel---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-phlebitis---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-phlebitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-mention---secondary/output
  carotid-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: carotid-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-phlebitis---secondary/output
  postprocedural-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: postprocedural-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: carotid-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-degree---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-degree---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: postprocedural-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  thoracoabdominal-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: thoracoabdominal-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-degree---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-varice---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-varice---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: thoracoabdominal-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  ventricular-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: ventricular-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-varice---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-tricuspid---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-tricuspid---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: ventricular-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-varicose---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-varicose---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-tricuspid---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-bilat---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-bilat---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-varicose---secondary/output
  right-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: right-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-bilat---secondary/output
  circulatory---secondary:
    run: circulatory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: right-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  upper-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: upper-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: circulatory---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-middle---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-middle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: upper-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  paroxysmal-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: paroxysmal-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-middle---secondary/output
  mitral-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: mitral-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: paroxysmal-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  renal-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: renal-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: mitral-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-aneurysm---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-aneurysm---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: renal-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  internal-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: internal-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-aneurysm---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-bleeding---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-bleeding---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: internal-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-dissection---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-dissection---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-bleeding---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-acquired---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-acquired---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-dissection---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-precerebrl---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-precerebrl---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-acquired---secondary/output
  thoracic-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: thoracic-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-precerebrl---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-communicating---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-communicating---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: thoracic-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  subarachnoid-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: subarachnoid-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-communicating---secondary/output
  essential-death-by-diseases-of-the-circulatory-system-natural-cause---secondary:
    run: essential-death-by-diseases-of-the-circulatory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: subarachnoid-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-following---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-following---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: essential-death-by-diseases-of-the-circulatory-system-natural-cause---secondary/output
  death-by-diseases-of-the-circulatory-system-natural-cause-fever---secondary:
    run: death-by-diseases-of-the-circulatory-system-natural-cause-fever---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-following---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-circulatory-system-natural-cause-fever---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
