module UnrealScript.Core.Const;

import ScriptClasses;
import UnrealScript.Core.Field;

extern(C++) interface Const : Field
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.Const")); }
	private static __gshared Const mDefaultProperties;
	@property final static Const DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Const)("Const Core.Default__Const")); }
}
