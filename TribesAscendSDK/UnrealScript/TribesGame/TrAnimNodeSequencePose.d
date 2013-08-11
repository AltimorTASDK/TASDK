module UnrealScript.TribesGame.TrAnimNodeSequencePose;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrPawn;

extern(C++) interface TrAnimNodeSequencePose : AnimNodeSequence
{
public extern(D):
	@property final auto ref ScriptArray!(UObject.BoneAtom) m_PoseSpaceBases() { return *cast(ScriptArray!(UObject.BoneAtom)*)(cast(size_t)cast(void*)this + 320); }
	final void FillWithPose(TrPawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66481], params.ptr, cast(void*)0);
	}
}
