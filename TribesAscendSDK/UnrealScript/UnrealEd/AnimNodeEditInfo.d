module UnrealScript.UnrealEd.AnimNodeEditInfo;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface AnimNodeEditInfo : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.AnimNodeEditInfo")); }
	private static __gshared AnimNodeEditInfo mDefaultProperties;
	@property final static AnimNodeEditInfo DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimNodeEditInfo)("AnimNodeEditInfo UnrealEd.Default__AnimNodeEditInfo")); }
}
