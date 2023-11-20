<a name="readme-top"></a>
![Contributers](https://img.shields.io/gitlab/contributors/coord%2Fdbt_coord_postcode_data?gitlab_url=https%3A%2F%2Fgitlab.coord.uk&style=for-the-badge)
![Last Commit](https://img.shields.io/gitlab/last-commit/coord%2Fdbt_coord_postcode_data?gitlab_url=https%3A%2F%2Fgitlab.coord.uk&style=for-the-badge)
![Forks](https://img.shields.io/gitlab/forks/coord%2Fdbt_coord_postcode_data?gitlab_url=https%3A%2F%2Fgitlab.coord.uk&style=for-the-badge)
![Stars](https://img.shields.io/gitlab/stars/coord%2Fdbt_coord_postcode_data?gitlab_url=https%3A%2F%2Fgitlab.coord.uk&style=for-the-badge)
![Issues](https://img.shields.io/gitlab/issues/all/coord%2Fdbt_coord_postcode_data?gitlab_url=https%3A%2F%2Fgitlab.coord.uk&style=for-the-badge)
![License](https://img.shields.io/gitlab/license/coord%2Fdbt_coord_postcode_data?gitlab_url=https%3A%2F%2Fgitlab.coord.uk&style=for-the-badge)
<br />

<div align="center">
  <a href="https://github.com/bowedyapper/dbt-coord-postcode-data">
    <img src="https://cdn.coord.uk/COORD_DBT_Logo.png" alt="Logo" height="140">
  </a>

<h3 align="center">DBT COORD Postcode Data</h3>

  <p align="center">
    A DBT project which attempts to transform the raw data from ONS(Office for National Statistics) and OS(Ordnance Survey) into a usable format for COORD.
  </p>
</div>

## About The Project

This project uses data from the ONS and OS to create a dataset which can be used by COORD to create a database of all the postcodes in the UK along with other useful information such as the coordinates of the postcode, the local authority, the region, etc.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Getting Started

This project requires data from both the ONS and OS. This project is more for the transformation of the data into a usable format for COORD and doesn't provide a ready to go database that you can import and use, you will need to construct the database yourself using the data from ONS and OS.

### Prerequisites

If you wish to run this you will need to have DBT installed on your machine. You can find out how to install DBT [here](https://docs.getdbt.com/dbt-cli/installation).

### Datasets

The data is subject to change and will go out of date when new datasets are released so you will need to update it when required.

- National Statistics Postcode Lookup: UK (NSPL) - [Get it here](<https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-created&tags=all(PRD_NSPL)>).
- Office for National Statistics Postcode Directory (ONSPD) - [Get it here](<https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-created&tags=all(PRD_ONSPD)>).
- National Statistics UPRN Lookup (NSUL) - [Get it here](<https://geoportal.statistics.gov.uk/search?collection=Dataset&sort=-created&tags=all(PRD_NSUL)>).
- Ordnance Survey Open Names - [Get it here](https://www.ordnancesurvey.co.uk/products/os-open-names).
- Ordnance Survey Open UPRN - [Get it here](https://www.ordnancesurvey.co.uk/products/os-open-uprn).
- MSOA Names - [Get it here](https://houseofcommonslibrary.github.io/msoanames/).
- NS 2011 Intermediate Zones Names and Codes for Scotland - [Get it here](https://geoportal.statistics.gov.uk/datasets/intermediate-zones-december-2011-names-and-codes-in-scotland-2/explore).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Usage

Running DBT

```sh
dbt run
```

Running a specific model

```sh
dbt run --select model_name
```

Testing

```sh
dbt test
```

Generating and serving docs

```sh
dbt docs generate
dbt docs serve
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
