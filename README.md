# maven3-runner

First, this runner compiles the project thanks to maven.

At each play, it runs a specific test using the `mvn test -Dtest=XXX` command.


# How to Use

To use this runner for your project, edit the `codingame.yml` file and add the following lines to your project:

```yaml
    runner:
      name: codingame/maven3-runner
      version: 1.0.0-openjdk-8
```

## Example

**A Git repository example**

```
.
├── about.md
├── codingame.yml
├── markdowns
│   └── <YOUR_LESSONS>.md
└── projects
    └── example                    #Your project root
        ├── src/main/java
        │   └── Example.java       #The stub provided to the user
        └── src/test/java
            └── ExampleTest.java   #Your JUnitTest Class
```

**In your CS project:**

*Example.java*
```java
public class Example {
	/**
	 * This method should return the sum between a and b
	 **/
	public void sum(int a, int b) {
	    return 1;
	}
}
```

*ExampleTestTest.java*
```java
import static org.junit.Assert.assertEquals;
public class ExampleTest {
	private Example example;
	@Before
	public void init() {
		example = new Example();
	}

	@Test
	public void testSum(){
		int a = 23487;
		int b = 240587;
		assertEquals(example.sum(a, b), a + b);
	}
}
```

**In your lesson:**
```md
@[Fix the following code so that the function DoSum returns a sum of integer]({"stubs": ["src/main/java/Example.java"],"command": "ExampleTest#testSum"})
```
