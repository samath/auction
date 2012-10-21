JC = javac

all: Parser.class

Parser.class: Parser.java
	$(JC) Parser.java

clean:
	rm -rf *.class
