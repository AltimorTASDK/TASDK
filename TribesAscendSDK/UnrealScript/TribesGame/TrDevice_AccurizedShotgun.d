module UnrealScript.TribesGame.TrDevice_AccurizedShotgun;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Shotgun;

extern(C++) interface TrDevice_AccurizedShotgun : TrDevice_Shotgun
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_AccurizedShotgun")); }
	private static __gshared TrDevice_AccurizedShotgun mDefaultProperties;
	@property final static TrDevice_AccurizedShotgun DefaultProperties() { mixin(MGDPC("TrDevice_AccurizedShotgun", "TrDevice_AccurizedShotgun TribesGame.Default__TrDevice_AccurizedShotgun")); }
}
