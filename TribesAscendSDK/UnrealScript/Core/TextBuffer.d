module UnrealScript.Core.TextBuffer;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TextBuffer : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.TextBuffer")); }
	private static __gshared TextBuffer mDefaultProperties;
	@property final static TextBuffer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TextBuffer)("TextBuffer Core.Default__TextBuffer")); }
}
