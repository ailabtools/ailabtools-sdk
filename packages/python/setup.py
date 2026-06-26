from setuptools import find_packages, setup


setup(
    name="ailabtools-sdk",
    version="0.1.0",
    description="AILabTools SDK for Python (async)",
    long_description=open("README.md", encoding="utf-8").read(),
    long_description_content_type="text/markdown",
    packages=find_packages(),
    python_requires=">=3.8",
    install_requires=["httpx>=0.27"],
)
