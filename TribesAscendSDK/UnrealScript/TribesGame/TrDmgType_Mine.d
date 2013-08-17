module UnrealScript.TribesGame.TrDmgType_Mine;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_Mine : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_Mine")); }
	private static __gshared TrDmgType_Mine mDefaultProperties;
	@property final static TrDmgType_Mine DefaultProperties() { mixin(MGDPC("TrDmgType_Mine", "TrDmgType_Mine TribesGame.Default__TrDmgType_Mine")); }
}
