module UnrealScript.TribesGame.TrDmgType_PrismMine;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Mine;

extern(C++) interface TrDmgType_PrismMine : TrDmgType_Mine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_PrismMine")); }
	private static __gshared TrDmgType_PrismMine mDefaultProperties;
	@property final static TrDmgType_PrismMine DefaultProperties() { mixin(MGDPC("TrDmgType_PrismMine", "TrDmgType_PrismMine TribesGame.Default__TrDmgType_PrismMine")); }
}
