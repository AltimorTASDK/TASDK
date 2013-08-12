module UnrealScript.Engine.Download;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface Download : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Download")); }
}
