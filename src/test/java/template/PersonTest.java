package template;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class PersonTest {

    @Test
    void test() {
        Person person = new Person("test", 21);
        assertEquals("test", person.getName());
        assertEquals(21, person.getAge());
    }
}
