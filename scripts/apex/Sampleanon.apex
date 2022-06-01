//set value to static variable, classname.variablename
SampleClass.sampleStaticString = 'This is STATIC variable';
system.debug(SampleClass.sampleStaticString);
//classname.nonstaticvariable WRONG, (SampleClass.SampleString = 'this is wrong') so we need create ogj
SampleClass s  = new SampleClass();
s.SampleString = 'this is non static variable';
system.debug(s.SampleString );
//s.sampleStaticString = 'static with non static'; No never


system.debug(SampleClass.sampleStaticString);
