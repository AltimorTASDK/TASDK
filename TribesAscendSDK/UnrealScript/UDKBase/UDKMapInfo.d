module UnrealScript.UDKBase.UDKMapInfo;

import ScriptClasses;
import UnrealScript.Engine.MapInfo;

extern(C++) interface UDKMapInfo : MapInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKMapInfo")); }
	private static __gshared UDKMapInfo mDefaultProperties;
	@property final static UDKMapInfo DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKMapInfo)("UDKMapInfo UDKBase.Default__UDKMapInfo")); }
	@property final auto ref float VisibilityModifier() { return *cast(float*)(cast(size_t)cast(void*)this + 60); }
}
