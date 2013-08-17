module UnrealScript.TribesGame.TrDmgType_ArxBuster;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_ArxBuster : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_ArxBuster")()); }
	private static __gshared TrDmgType_ArxBuster mDefaultProperties;
	@property final static TrDmgType_ArxBuster DefaultProperties() { mixin(MGDPC!(TrDmgType_ArxBuster, "TrDmgType_ArxBuster TribesGame.Default__TrDmgType_ArxBuster")()); }
}
