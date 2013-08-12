module UnrealScript.UnrealEd.LightingChannelsObject;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface LightingChannelsObject : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.LightingChannelsObject")); }
	private static __gshared LightingChannelsObject mDefaultProperties;
	@property final static LightingChannelsObject DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(LightingChannelsObject)("LightingChannelsObject UnrealEd.Default__LightingChannelsObject")); }
}
