module UnrealScript.TribesGame.TrDmgType_ARC8;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_ARC8 : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_ARC8")); }
	private static __gshared TrDmgType_ARC8 mDefaultProperties;
	@property final static TrDmgType_ARC8 DefaultProperties() { mixin(MGDPC("TrDmgType_ARC8", "TrDmgType_ARC8 TribesGame.Default__TrDmgType_ARC8")); }
}
