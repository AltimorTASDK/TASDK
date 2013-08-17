module UnrealScript.TribesGame.TrDmgType_Falcon;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_Falcon : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_Falcon")); }
	private static __gshared TrDmgType_Falcon mDefaultProperties;
	@property final static TrDmgType_Falcon DefaultProperties() { mixin(MGDPC("TrDmgType_Falcon", "TrDmgType_Falcon TribesGame.Default__TrDmgType_Falcon")); }
}
