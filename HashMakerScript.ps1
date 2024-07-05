# This file makes a copy and writes the hash of the file to a text file

# Create a folder for our results 
New-Item -ItemType Directory -Force -Path .\Results

# Create a folder for our forensic copy
New-Item -ItemType Directory -Force -Path .\EvidenceCopies

# Copy the evidence files to a new folder
Copy-Item .\Evidence\Evidence1.txt .\EvidenceCopies\Evidence1COPY.txt
Copy-Item .\Evidence\Evidence2.docx .\EvidenceCopies\Evidence2COPY.docx
Copy-Item .\Evidence\Evidence3.txt .\EvidenceCopies\Evidence3COPY.txt
Copy-Item .\Evidence\Evidence4.docx .\EvidenceCopies\Evidence4COPY.docx
Copy-Item .\Evidence\Evidence5.docx .\EvidenceCopies\Evidence5COPY.docx

# Calcuate the hash of each evidence file and write it to a text file
Get-FileHash .\Evidence\Evidence1.txt -Algorithm SHA256 | Out-File .\Results\Evidence1.txt
Get-FileHash .\Evidence\Evidence2.docx -Algorithm SHA256 | Out-File .\Results\Evidence2.txt
Get-FileHash .\Evidence\Evidence3.txt -Algorithm SHA256 | Out-File .\Results\Evidence3.txt
Get-FileHash .\Evidence\Evidence4.docx -Algorithm SHA256 | Out-File .\Results\Evidence4.txt
Get-FileHash .\Evidence\Evidence5.docx -Algorithm SHA256 | Out-File .\Results\Evidence5.txt


# Calculate the hash of each copied file and write it to a text file
Get-FileHash .\EvidenceCopies\Evidence1COPY.txt -Algorithm SHA256 | Out-File .\Results\Evidence1COPY.txt
Get-FileHash .\EvidenceCopies\Evidence2COPY.docx -Algorithm SHA256 | Out-File .\Results\Evidence2COPY.txt
Get-FileHash .\EvidenceCopies\Evidence3COPY.txt -Algorithm SHA256 | Out-File .\Results\Evidence3COPY.txt
Get-FileHash .\EvidenceCopies\Evidence4COPY.docx -Algorithm SHA256 | Out-File .\Results\Evidence4COPY.txt
Get-FileHash .\EvidenceCopies\Evidence5COPY.docx -Algorithm SHA256 | Out-File .\Results\Evidence5COPY.txt