module UnrealScript.TribesGame.TrFamilyInfoList;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface TrFamilyInfoList : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrFamilyInfoList")); }
	private static __gshared TrFamilyInfoList mDefaultProperties;
	@property final static TrFamilyInfoList DefaultProperties() { mixin(MGDPC("TrFamilyInfoList", "TrFamilyInfoList TribesGame.Default__TrFamilyInfoList")); }
	@property final auto ref ScriptArray!(ScriptString) ClassList() { mixin(MGPC("ScriptArray!(ScriptString)", 60)); }
}
