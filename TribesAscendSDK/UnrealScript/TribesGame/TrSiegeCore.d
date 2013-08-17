module UnrealScript.TribesGame.TrSiegeCore;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameObjective;

extern(C++) interface TrSiegeCore : TrGameObjective
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrSiegeCore")()); }
	private static __gshared TrSiegeCore mDefaultProperties;
	@property final static TrSiegeCore DefaultProperties() { mixin(MGDPC!(TrSiegeCore, "TrSiegeCore TribesGame.Default__TrSiegeCore")()); }
	static struct BlownUp
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrSiegeCore.BlownUp")()); }
	}
}
