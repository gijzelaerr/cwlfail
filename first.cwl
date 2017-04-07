cwlVersion: v1.0
class: CommandLineTool
requirements:
  - class: DockerRequirement
    dockerImageId: first
baseCommand: [/usr/local/bin/first.sh]
inputs: []
outputs:
  firstdir:
    type: Directory
    outputBinding:
      glob: "parent_folder"
