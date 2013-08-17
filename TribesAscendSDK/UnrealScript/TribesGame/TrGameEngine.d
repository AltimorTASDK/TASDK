module UnrealScript.TribesGame.TrGameEngine;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.PlatformCommon.TgGameEngine;

extern(C++) interface TrGameEngine : TgGameEngine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrGameEngine")()); }
	private static __gshared TrGameEngine mDefaultProperties;
	@property final static TrGameEngine DefaultProperties() { mixin(MGDPC!(TrGameEngine, "TrGameEngine TribesGame.Default__TrGameEngine")()); }
	@property final auto ref float fBGMVolume() { mixin(MGPC!("float", 1840)()); }
}
