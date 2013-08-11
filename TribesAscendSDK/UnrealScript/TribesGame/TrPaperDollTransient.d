module UnrealScript.TribesGame.TrPaperDollTransient;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.TribesGame.TrPaperDoll;

extern(C++) interface TrPaperDollTransient : TrPaperDoll
{
	public @property final auto ref float m_fBackdropFadeRemainingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 916); }
	public @property final auto ref float m_fBackdropFadeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 912); }
	public @property final auto ref MaterialInstanceConstant m_BackdropMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 908); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100548], cast(void*)0, cast(void*)0);
	}
	final void FadeInBackdrop()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100551], cast(void*)0, cast(void*)0);
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100552], params.ptr, cast(void*)0);
	}
	final void SetPosition(Vector ViewPos, Rotator ViewRot)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = ViewPos;
		*cast(Rotator*)&params[12] = ViewRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100556], params.ptr, cast(void*)0);
	}
}
