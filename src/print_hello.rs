// main.rs

pub fn print_hello() -> String {
    let message = "Hello, worlds!";
    println!("{}", message);
    message.to_string()
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_print_hello() {
        assert_eq!(print_hello(), "Hello, worlds!");
    }
}
