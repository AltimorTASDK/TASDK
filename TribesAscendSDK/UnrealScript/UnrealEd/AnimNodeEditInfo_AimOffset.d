module UnrealScript.UnrealEd.AnimNodeEditInfo_AimOffset;

import ScriptClasses;
import UnrealScript.UnrealEd.AnimNodeEditInfo;

extern(C++) interface AnimNodeEditInfo_AimOffset : AnimNodeEditInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.AnimNodeEditInfo_AimOffset")); }
	private static __gshared AnimNodeEditInfo_AimOffset mDefaultProperties;
	@property final static AnimNodeEditInfo_AimOffset DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimNodeEditInfo_AimOffset)("AnimNodeEditInfo_AimOffset UnrealEd.Default__AnimNodeEditInfo_AimOffset")); }
}
