cwlVersion: v1.0
class: Workflow
inputs: []

outputs:
  resultdir:
    type: Directory
    outputSource: third/thirddir


steps:
  first:
    run: first.cwl
    in: []
    out: [firstdir]

  second:
    run: second.cwl
    in:
      firstdir: first/firstdir
    out: [seconddir]

  third:
    run: third.cwl
    in:
      seconddir: second/seconddir
    out: [thirddir]
