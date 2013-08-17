module UnrealScript.TribesGame.TrDevice_Mine;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_Mine : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_Mine")); }
	private static __gshared TrDevice_Mine mDefaultProperties;
	@property final static TrDevice_Mine DefaultProperties() { mixin(MGDPC("TrDevice_Mine", "TrDevice_Mine TribesGame.Default__TrDevice_Mine")); }
}
