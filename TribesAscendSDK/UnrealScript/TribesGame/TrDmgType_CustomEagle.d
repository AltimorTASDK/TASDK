module UnrealScript.TribesGame.TrDmgType_CustomEagle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_CustomEagle : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_CustomEagle")); }
	private static __gshared TrDmgType_CustomEagle mDefaultProperties;
	@property final static TrDmgType_CustomEagle DefaultProperties() { mixin(MGDPC("TrDmgType_CustomEagle", "TrDmgType_CustomEagle TribesGame.Default__TrDmgType_CustomEagle")); }
}
