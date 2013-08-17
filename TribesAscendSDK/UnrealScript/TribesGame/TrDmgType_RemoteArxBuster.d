module UnrealScript.TribesGame.TrDmgType_RemoteArxBuster;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_RemoteArxBuster : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_RemoteArxBuster")); }
	private static __gshared TrDmgType_RemoteArxBuster mDefaultProperties;
	@property final static TrDmgType_RemoteArxBuster DefaultProperties() { mixin(MGDPC("TrDmgType_RemoteArxBuster", "TrDmgType_RemoteArxBuster TribesGame.Default__TrDmgType_RemoteArxBuster")); }
}
