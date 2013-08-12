module UnrealScript.TribesGame.TrAnimNodeSequencePose;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrPawn;

extern(C++) interface TrAnimNodeSequencePose : AnimNodeSequence
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAnimNodeSequencePose")); }
	private static __gshared TrAnimNodeSequencePose mDefaultProperties;
	@property final static TrAnimNodeSequencePose DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAnimNodeSequencePose)("TrAnimNodeSequencePose TribesGame.Default__TrAnimNodeSequencePose")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mFillWithPose;
		public @property static final ScriptFunction FillWithPose() { return mFillWithPose ? mFillWithPose : (mFillWithPose = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAnimNodeSequencePose.FillWithPose")); }
	}
	@property final auto ref ScriptArray!(UObject.BoneAtom) m_PoseSpaceBases() { return *cast(ScriptArray!(UObject.BoneAtom)*)(cast(size_t)cast(void*)this + 320); }
	final void FillWithPose(TrPawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillWithPose, params.ptr, cast(void*)0);
	}
}
