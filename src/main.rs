fn hello() -> String {
    String::from("Hello, world!")
}

fn not_used_function() -> i32 {
    return 2 + 2;
}

fn main() {
    println!("{}", hello());
}

#[cfg(test)]
mod tests {
    use super::hello;

    #[test]
    fn test_hello() {
        assert_eq!(hello(), "Hello, world!");
    }
}
