# JHipster JDL Entity Extractor

![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)

## Overview

This Bash script facilitates the extraction of entity names from a JHipster JDL (JHipster Domain Language) file. The script allows users to choose between newline and comma delimiters for the extracted entity names.

## Usage

1. Clone the repository:

   ```bash
   git clone https://github.com/yhao3/jhipster-jdl-entity-extractor
   cd jhipster-jdl-entity-extractor
   ```

2. Make the script executable:

   ```bash
   chmod +x extract_entities.sh
   ```

3. Run the script with your JDL file as an argument:

   ```bash
   ./extract_entities.sh your-jdl-file.jdl
   ```

4. Choose a delimiter for the entities list:

   ```bash
   Newline (Enter 'n' or 'N')
   Comma (Enter 'c' or 'C')
   ```

5. The extracted entities will be saved to `entities.txt`.