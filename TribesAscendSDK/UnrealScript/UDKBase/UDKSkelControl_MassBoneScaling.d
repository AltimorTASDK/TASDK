module UnrealScript.UDKBase.UDKSkelControl_MassBoneScaling;

import ScriptClasses;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface UDKSkelControl_MassBoneScaling : SkelControlBase
{
public extern(D):
	@property final auto ref ScriptArray!(float) BoneScales() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 188); }
final:
	void SetBoneScale(ScriptName BoneName, float Scale)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		*cast(float*)&params[8] = Scale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35440], params.ptr, cast(void*)0);
	}
	float GetBoneScale(ScriptName BoneName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35443], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
}
