module UnrealScript.Engine.K2Node_Code;

import ScriptClasses;
import UnrealScript.Engine.K2NodeBase;

extern(C++) interface K2Node_Code : K2NodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.K2Node_Code")); }
	private static __gshared K2Node_Code mDefaultProperties;
	@property final static K2Node_Code DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(K2Node_Code)("K2Node_Code Engine.Default__K2Node_Code")); }
}
