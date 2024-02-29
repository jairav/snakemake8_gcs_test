import os

rule all:
    input:
        storage.gcs("gs://bkt-test-926/scratch/blah.txt")
    output:
        storage.gcs("gs://bkt-test-926/scratch/SUCCESS.txt")
    shell:
        """
        cp {input} {output} 
        """



