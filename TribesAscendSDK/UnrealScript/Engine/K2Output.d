module UnrealScript.Engine.K2Output;

import ScriptClasses;
import UnrealScript.Engine.K2Connector;
import UnrealScript.Engine.K2Input;

extern(C++) interface K2Output : K2Connector
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.K2Output")); }
	private static __gshared K2Output mDefaultProperties;
	@property final static K2Output DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(K2Output)("K2Output Engine.Default__K2Output")); }
	@property final auto ref ScriptArray!(K2Input) ToInputs() { return *cast(ScriptArray!(K2Input)*)(cast(size_t)cast(void*)this + 80); }
}
