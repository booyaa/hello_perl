#[cfg(test)]
mod tests {
    #[test]
    fn should_be_five() {
        let expected = 5;
        let actual = super::addition(2,3);
        assert_eq!(expected, actual);
    }

}

extern crate libc;
use libc::uint32_t;

#[no_mangle]
pub extern fn addition(a: uint32_t, b: uint32_t) -> uint32_t {
    a + b
}

#[allow(dead_code)]
pub extern fn fix_linking_when_not_using_stdlib() { panic!() }
