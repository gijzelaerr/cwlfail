cwlVersion: v1.0
class: CommandLineTool

$namespaces:
  cwltool: http://commonwl.org/cwltool#

requirements:
  - class: DockerRequirement
    dockerImageId: third
  - class: InlineJavascriptRequirement
  - class: InitialWorkDirRequirement
    listing:
      - entry: $( inputs.seconddir )
        writable: true
  - class: cwltool:InplaceUpdateRequirement
    inplaceUpdate: true

baseCommand: ["/usr/local/bin/third.sh"]
inputs:
  seconddir: Directory

outputs:
  thirddir:
    type: Directory
    outputBinding:
      glob: $( inputs.seconddir.basename )
