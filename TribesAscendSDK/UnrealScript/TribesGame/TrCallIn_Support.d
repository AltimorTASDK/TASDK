module UnrealScript.TribesGame.TrCallIn_Support;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrCallIn;

extern(C++) interface TrCallIn_Support : TrCallIn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrCallIn_Support")()); }
	private static __gshared TrCallIn_Support mDefaultProperties;
	@property final static TrCallIn_Support DefaultProperties() { mixin(MGDPC!(TrCallIn_Support, "TrCallIn_Support TribesGame.Default__TrCallIn_Support")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFireCompletedCallIn;
			ScriptFunction mDestroyOverLimit;
		}
		public @property static final
		{
			ScriptFunction FireCompletedCallIn() { mixin(MGF!("mFireCompletedCallIn", "Function TribesGame.TrCallIn_Support.FireCompletedCallIn")()); }
			ScriptFunction DestroyOverLimit() { mixin(MGF!("mDestroyOverLimit", "Function TribesGame.TrCallIn_Support.DestroyOverLimit")()); }
		}
	}
	@property final auto ref
	{
		int MaxDeployedLimit() { mixin(MGPC!("int", 548)()); }
		ScriptClass ItemInDeliveryPod() { mixin(MGPC!("ScriptClass", 544)()); }
	}
final:
	bool FireCompletedCallIn(int CallInOffs, Vector TargetLocation, Vector TargetNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = CallInOffs;
		*cast(Vector*)&params[4] = TargetLocation;
		*cast(Vector*)&params[16] = TargetNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.FireCompletedCallIn, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	void DestroyOverLimit()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DestroyOverLimit, cast(void*)0, cast(void*)0);
	}
}
