module UnrealScript.TribesGame.TrCollisionProxy_HelpText;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.TribesGame.TrCollisionProxy;
import UnrealScript.TribesGame.TrHelpTextManager;

extern(C++) interface TrCollisionProxy_HelpText : TrCollisionProxy
{
public extern(D):
	@property final auto ref
	{
		TrHelpTextManager.EHelpTextType m_HelpTextType() { return *cast(TrHelpTextManager.EHelpTextType*)(cast(size_t)cast(void*)this + 496); }
		Pawn m_LocalPawn() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 504); }
		float m_fHelpTextRemovalTime() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
	}
final:
	bool ShouldShowHelpText_Delegate(TrHelpTextManager.EHelpTextType HelpTextType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = HelpTextType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74564], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void OnPawnAdded(Pawn aPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74569], params.ptr, cast(void*)0);
	}
	void RequestHelpText()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74571], cast(void*)0, cast(void*)0);
	}
	void TryTraceAgainTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74573], cast(void*)0, cast(void*)0);
	}
	void OnPawnRemoved(Pawn aPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74575], params.ptr, cast(void*)0);
	}
}
