# Datahåndteringsplan v. 1.0

## Author: Av Barbara A. Bukhvalova og Daniel Flø
## Vitenskapskomiteen for mat og miljø

## Overview

This repository contains the data management plan for VKM (Vitenskapskomiteen for mat og miljø), which serves as a guide for anyone working with data within VKM. The goal of this plan is to ensure good data management practices, maintain data structure, enhance clarity, save time, and ensure data quality and reproducibility. The plan covers various aspects of data management, including data storage, metadata description, rights, privacy, and responsibilities.

If you have any questions regarding data management in VKM, please contact Daniel Flø (Environment) at daniel.flo@vkm.no or Barbara A. Bukhvalova (Food) at barbara.bukhvalova@vkm.no.

## What is Data in VKM

Data in VKM refers to all records and reports in the form of numbers that are generated or collected during a project. These data are used in statistical calculations, models, tables, figures, and maps and need to be properly documented.

## Data Collection

### Raw Data

Raw data represents the unprocessed and unmanipulated dataset. It can be in the form of observations recorded in an Excel file by a researcher or data directly obtained from instruments like chromatographs or satellite images. Raw data is often unstructured and cannot be directly used in statistical analyses.

### Processed Data

Processed data is the organized and cleaned form of raw data. It may include the creation of new variables or summarizations. Each variable should have its column, each observation its row, and each cell should contain a single observation (or NA). If there are multiple datasets or observations for a value in one or more files, the datasets should contain an ID column to link and differentiate the observations.

## Metadata

Metadata refers to information about the data. It should not be written in the raw or processed data files but rather in a separate metadata document. The metadata should describe each variable, including units, data types, information about summarization methods, missing values, and other relevant information about the data. It should also include any notes, links, citations, contact information, and rights associated with the data.

## Script or Codebook

For processed data, there should be a script or codebook describing how the raw data was transformed into the processed form. This should include details about all operations and methods used, including any manual manipulations, information about packages and versions, and how any calculations were performed.

## Data Structuring and Storage

### Filenames

Filenames should be unique, informative, and avoid special characters such as \ / ? : * ” > < | : # % ” { } | ^ [ ] ` ~, as well as the Nordic letters: æÆ øØ åÅ äÄ öÖ. Spaces should be replaced with underscores, and if the filename includes a date, it should use the YYYYMMDD format (e.g., "20230227" for February 27, 2023).

### Data Structure

Data can take various forms, such as tables, arrays, or rasters. However, most commonly, data is presented as a table, often in Excel or text files. Excel files should follow either a wide or long format, and there should be only one dataset (table) per file. Tables should adhere to the "Tidy principle": Each variable should have its column, each observation its row, and each cell should contain a single observation. For large datasets, database normalization principles should be followed.

### Data Storage

All project data should be stored in a centralized data repository. A centralized data repository simplifies data quality management, ensures data availability and security, and facilitates data analysis. Therefore, all data should be stored in the VKM Data folder on the VKM SharePoint site under the designated Project_mame_yyyy.mm.dd directory.

### Sharing Data

Data can be shared and published on the internet through platforms like GitHub and Zenodo. These platforms can enhance transparency and reproducibility in VKM's work. However, they do not replace the storage of data in the VKM Data folder.

## Figures, Maps, and Tables

Figures, maps, and tables should be designed to be informative and self-explanatory. They should contain all necessary explanations, including data sources, abbreviations, and any other relevant details.

### Figures

Figures should have clear explanations and a figure title. Any abbreviations or symbols used in the figure should be defined in the figure caption. Figure files should be stored in the preferred format (PNG or TIFF with compression "lzw") and should have a resolution of 300 dpi or less than 1 MB in size. Figures should be named descriptively, e.g., "Fig01.tif," "Fig02.tif," etc.

### Maps

Maps should include a map legend, a map title, a north arrow, and a scale. Data sources and citations should be provided on the map. Map files should be stored in PNG or TIFF format with a resolution of 300 dpi and a descriptive filename.

### Tables

Tables should be self-explanatory, and all information should be included in the table caption. Numerical values over one thousand should use a period as the decimal separator (e.g., "2.020 cases"). Table captions should include data sources and explanations for all abbreviations used.

## Appendix

The appendix contains an example of a folder structure for managing literature data within a project.

## How to Use this Repository

This repository serves as a guide for data management practices within VKM. It provides information on data collection, metadata, scripts, data structuring, storage, and sharing. It also includes examples of figures, maps, and tables to help ensure clear and informative visualizations of data.

## Additional Resources

VKM personnel can access GitHub for version control and collaboration on projects. Zenodo is another platform for publishing and finding datasets. Shiny is a useful R package for building interactive web applications and documents from R.

GitHub: <https://github.com/orgs/Vitenskapskomiteen/dashboard>

Zenodo: <https://about.zenodo.org/>

Shiny: <https://shiny.rstudio.com/>

VKM personnel can also access the PRISMA (Preferred Reporting Items for Systematic Reviews and Meta-Analyses) and ROSES (Reporting Standards for Systematic Evidence Syntheses) guidelines for systematic literature reviews. The guidelines provide a structure for documenting the literature review process and ensuring transparency and reproducibility.

## END