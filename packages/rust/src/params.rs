use crate::{Error, FileInput, Result};
use reqwest::multipart::{Form, Part};
use std::fmt::Display;

pub trait ApiParams {
    fn query_pairs(&self) -> Vec<(&'static str, String)> { Vec::new() }
    fn multipart_form(&self) -> Result<Form> { Ok(Form::new()) }
}

pub fn add_text<T: Display>(form: Form, name: &'static str, value: &T) -> Form {
    form.text(name, value.to_string())
}

pub fn add_optional_text<T: Display>(form: Form, name: &'static str, value: &Option<T>) -> Form {
    match value {
        Some(value) => add_text(form, name, value),
        None => form,
    }
}

pub fn add_file(form: Form, name: &'static str, file: &FileInput) -> Result<Form> {
    let part = Part::bytes(file.bytes.clone())
        .file_name(file.filename.clone())
        .mime_str(&file.content_type)
        .map_err(|error| Error::Message(format!("invalid content type for {name}: {error}")))?;
    Ok(form.part(name, part))
}

pub fn add_optional_file(form: Form, name: &'static str, file: &Option<FileInput>) -> Result<Form> {
    match file {
        Some(file) => add_file(form, name, file),
        None => Ok(form),
    }
}
