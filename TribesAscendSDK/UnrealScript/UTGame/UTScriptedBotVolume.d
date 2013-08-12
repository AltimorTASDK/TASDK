module UnrealScript.UTGame.UTScriptedBotVolume;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PhysicsVolume;

extern(C++) interface UTScriptedBotVolume : PhysicsVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTScriptedBotVolume")); }
	private static __gshared UTScriptedBotVolume mDefaultProperties;
	@property final static UTScriptedBotVolume DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTScriptedBotVolume)("UTScriptedBotVolume UTGame.Default__UTScriptedBotVolume")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPawnLeavingVolume;
		public @property static final ScriptFunction PawnLeavingVolume() { return mPawnLeavingVolume ? mPawnLeavingVolume : (mPawnLeavingVolume = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTScriptedBotVolume.PawnLeavingVolume")); }
	}
	final void PawnLeavingVolume(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnLeavingVolume, params.ptr, cast(void*)0);
	}
}
