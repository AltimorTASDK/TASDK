module UnrealScript.TribesGame.TrGameObjectiveUpgrade;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrGameObjective;

extern(C++) interface TrGameObjectiveUpgrade : UObject
{
public extern(D):
	@property final auto ref
	{
		float m_fNewValue() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
		ScriptName m_nmClassPropertyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 60); }
		TrGameObjective m_Owner() { return *cast(TrGameObjective*)(cast(size_t)cast(void*)this + 76); }
		UObject.Pointer m_ClassPropertyPointer() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 72); }
	}
	final void InitUpgrade(TrGameObjective OwnerObject)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameObjective*)params.ptr = OwnerObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[91139], params.ptr, cast(void*)0);
	}
}
