from setuptools import find_packages, setup


setup(
    name="ailabtools-sdk",
    version="0.5",
    description="AILabTools SDK for Python (async)",
    long_description=open("README.md", encoding="utf-8").read(),
    long_description_content_type="text/markdown",
    url="https://www.ailabtools.com/",
    project_urls={
        "Homepage": "https://www.ailabtools.com/",
        "Documentation": "https://github.com/ailabtools/ailabtools-sdk/tree/main/docs",
        "Repository": "https://github.com/ailabtools/ailabtools-sdk",
        "Issues": "https://github.com/ailabtools/ailabtools-sdk/issues",
    },
    packages=find_packages(),
    python_requires=">=3.8",
    install_requires=["httpx>=0.27"],
)
