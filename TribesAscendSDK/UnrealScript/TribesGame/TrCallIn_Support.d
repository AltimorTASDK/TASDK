module UnrealScript.TribesGame.TrCallIn_Support;

import ScriptClasses;
import UnrealScript.TribesGame.TrCallIn;

extern(C++) interface TrCallIn_Support : TrCallIn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCallIn_Support")); }
	private static __gshared TrCallIn_Support mDefaultProperties;
	@property final static TrCallIn_Support DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrCallIn_Support)("TrCallIn_Support TribesGame.Default__TrCallIn_Support")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFireCompletedCallIn;
			ScriptFunction mDestroyOverLimit;
		}
		public @property static final
		{
			ScriptFunction FireCompletedCallIn() { return mFireCompletedCallIn ? mFireCompletedCallIn : (mFireCompletedCallIn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCallIn_Support.FireCompletedCallIn")); }
			ScriptFunction DestroyOverLimit() { return mDestroyOverLimit ? mDestroyOverLimit : (mDestroyOverLimit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCallIn_Support.DestroyOverLimit")); }
		}
	}
	@property final auto ref
	{
		int MaxDeployedLimit() { return *cast(int*)(cast(size_t)cast(void*)this + 548); }
		ScriptClass ItemInDeliveryPod() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 544); }
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
