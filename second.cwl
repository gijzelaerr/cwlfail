cwlVersion: v1.0
class: CommandLineTool

$namespaces:
  cwltool: http://commonwl.org/cwltool#

requirements:
  - class: DockerRequirement
    dockerImageId: second
  - class: InlineJavascriptRequirement
  - class: InitialWorkDirRequirement
    listing:
      - entry: $( inputs.firstdir )
        writable: true
  - class: cwltool:InplaceUpdateRequirement
    inplaceUpdate: true

baseCommand: ["/usr/local/bin/second.sh"]
inputs:
  firstdir: Directory

outputs:
  seconddir:
    type: Directory
    outputBinding:
      glob: $( inputs.firstdir.basename )
