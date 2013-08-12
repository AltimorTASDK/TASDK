module UnrealScript.UnrealEd.LightmassOptionsObject;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface LightmassOptionsObject : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.LightmassOptionsObject")); }
	private static __gshared LightmassOptionsObject mDefaultProperties;
	@property final static LightmassOptionsObject DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(LightmassOptionsObject)("LightmassOptionsObject UnrealEd.Default__LightmassOptionsObject")); }
}
