
# web-recon-scripts

**web-recon-scripts** is a collection of automation scripts designed to streamline web application reconnaissance and penetration testing tasks. These scripts help simplify directory enumeration, subdomain discovery, and vulnerability scanning for security professionals and bug bounty hunters.

## Features

- Automated directory and file enumeration
- Subdomain discovery and DNS recon
- SSL/TLS security checks
- Customizable for diverse use cases
- Designed for efficiency in web reconnaissance workflows

## Requirements

- [Feroxbuster](https://github.com/epi052/feroxbuster)
- Bash shell (compatible with most Unix-like systems)

## Installation

Clone the repository:

```bash
git clone https://github.com/your-username/web-recon-scripts.git
cd web-recon-scripts
```

Ensure the required tools (like `feroxbuster`) are installed and in your system's PATH.

## Usage

Example usage of a script in this repository:

### `run_feroxbuster.sh`

This script automates `feroxbuster` for multiple URLs.

1. Place your target URLs in a file named `urls.txt` (one URL per line).
2. Run the script:

```bash
bash run_feroxbuster.sh
```

3. Results will be saved as individual files, one per URL.

## Legal Disclaimer

These scripts are intended for legal and authorized security assessments only. Unauthorized use against systems without explicit permission is strictly prohibited.

## Contributing

Contributions are welcome! Please fork this repository, create a new branch for your changes, and submit a pull request.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.
