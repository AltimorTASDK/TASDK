module UnrealScript.Engine.Download;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface Download : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Download")); }
	private static __gshared Download mDefaultProperties;
	@property final static Download DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Download)("Download Engine.Default__Download")); }
}
