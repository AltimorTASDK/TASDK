module UnrealScript.UTGame.UTScriptedBotVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PhysicsVolume;

extern(C++) interface UTScriptedBotVolume : PhysicsVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTScriptedBotVolume")()); }
	private static __gshared UTScriptedBotVolume mDefaultProperties;
	@property final static UTScriptedBotVolume DefaultProperties() { mixin(MGDPC!(UTScriptedBotVolume, "UTScriptedBotVolume UTGame.Default__UTScriptedBotVolume")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPawnLeavingVolume;
		public @property static final ScriptFunction PawnLeavingVolume() { mixin(MGF!("mPawnLeavingVolume", "Function UTGame.UTScriptedBotVolume.PawnLeavingVolume")()); }
	}
	final void PawnLeavingVolume(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnLeavingVolume, params.ptr, cast(void*)0);
	}
}
