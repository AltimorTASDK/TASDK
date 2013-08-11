module UnrealScript.TribesGame.TrStealthResidue;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Actor;

extern(C++) interface TrStealthResidue : Actor
{
public extern(D):
	@property final auto ref MaterialInstanceConstant m_MeshMaterial() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 480); }
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112734], cast(void*)0, cast(void*)0);
	}
}
