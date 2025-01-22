import unittest
from app import greet


class TestApp(unittest.TestCase):
    def test_greet(self):
        """Test case for the greet function."""
        self.assertEqual(greet("Alice"), "Hello, Alice!")
        self.assertEqual(greet("Bob"), "Hello, Bob!")
        self.assertEqual(greet(""), "Hello, !")


if __name__ == "__main__":
    unittest.main()