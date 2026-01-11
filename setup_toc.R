# Run this interactively as needed to update toc.csv. Should rarely be necessary.

googlesheets4::read_sheet(
  "19WyyME0GQ_5eREP0NheEQ79aiKIsTST_tgFl3uwvk5c",
  range = "A2:B",
  col_names = c("number", "title"),
  col_types = "c"
) |> 
  dplyr::filter(!is.na(.data$number)) |> 
  dplyr::mutate(number_wide = stringr::str_pad(.data$number, 2, pad = "0")) |> 
  readr::write_csv("toc.csv")
