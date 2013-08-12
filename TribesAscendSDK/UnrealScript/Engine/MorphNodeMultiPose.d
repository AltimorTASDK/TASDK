module UnrealScript.Engine.MorphNodeMultiPose;

import ScriptClasses;
import UnrealScript.Engine.MorphTarget;
import UnrealScript.Engine.MorphNodeBase;

extern(C++) interface MorphNodeMultiPose : MorphNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MorphNodeMultiPose")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAddMorphTarget;
			ScriptFunction mRemoveMorphTarget;
			ScriptFunction mUpdateMorphTarget;
		}
		public @property static final
		{
			ScriptFunction AddMorphTarget() { return mAddMorphTarget ? mAddMorphTarget : (mAddMorphTarget = ScriptObject.Find!(ScriptFunction)("Function Engine.MorphNodeMultiPose.AddMorphTarget")); }
			ScriptFunction RemoveMorphTarget() { return mRemoveMorphTarget ? mRemoveMorphTarget : (mRemoveMorphTarget = ScriptObject.Find!(ScriptFunction)("Function Engine.MorphNodeMultiPose.RemoveMorphTarget")); }
			ScriptFunction UpdateMorphTarget() { return mUpdateMorphTarget ? mUpdateMorphTarget : (mUpdateMorphTarget = ScriptObject.Find!(ScriptFunction)("Function Engine.MorphNodeMultiPose.UpdateMorphTarget")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(MorphTarget) Targets() { return *cast(ScriptArray!(MorphTarget)*)(cast(size_t)cast(void*)this + 108); }
		ScriptArray!(ScriptName) MorphNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 120); }
		ScriptArray!(float) Weights() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 132); }
	}
final:
	bool AddMorphTarget(ScriptName MorphTargetName, float InWeight)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MorphTargetName;
		*cast(float*)&params[8] = InWeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddMorphTarget, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void RemoveMorphTarget(ScriptName MorphTargetName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MorphTargetName;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveMorphTarget, params.ptr, cast(void*)0);
	}
	bool UpdateMorphTarget(MorphTarget Target, float InWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(MorphTarget*)params.ptr = Target;
		*cast(float*)&params[4] = InWeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateMorphTarget, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}
