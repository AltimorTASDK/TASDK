module UnrealScript.TribesGame.TrProj_CallInBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_CallInBase : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_CallInBase")()); }
	private static __gshared TrProj_CallInBase mDefaultProperties;
	@property final static TrProj_CallInBase DefaultProperties() { mixin(MGDPC!(TrProj_CallInBase, "TrProj_CallInBase TribesGame.Default__TrProj_CallInBase")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mReplicatedEvent;
			ScriptFunction mEffectIsRelevant;
		}
		public @property static final
		{
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function TribesGame.TrProj_CallInBase.ReplicatedEvent")()); }
			ScriptFunction EffectIsRelevant() { mixin(MGF!("mEffectIsRelevant", "Function TribesGame.TrProj_CallInBase.EffectIsRelevant")()); }
		}
	}
	@property final auto ref Vector r_TargetLocation() { mixin(MGPC!(Vector, 816)()); }
final:
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	bool EffectIsRelevant(Vector SpawnLocation, bool bForceDedicated, float VisibleCullDistance, float HiddenCullDistance)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = SpawnLocation;
		*cast(bool*)&params[12] = bForceDedicated;
		*cast(float*)&params[16] = VisibleCullDistance;
		*cast(float*)&params[20] = HiddenCullDistance;
		(cast(ScriptObject)this).ProcessEvent(Functions.EffectIsRelevant, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
}
