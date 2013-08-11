module UnrealScript.Engine.LensFlareSource;

import ScriptClasses;
import UnrealScript.Engine.LensFlare;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;

extern(C++) interface LensFlareSource : Actor
{
	public @property final bool bCurrentlyActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x1) != 0; }
	public @property final bool bCurrentlyActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x1; } return val; }
	final void SetTemplate(LensFlare NewTemplate)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LensFlare*)params.ptr = NewTemplate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19323], params.ptr, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19325], cast(void*)0, cast(void*)0);
	}
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19326], params.ptr, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19328], params.ptr, cast(void*)0);
	}
	final void SetFloatParameter(ScriptName ParameterName, float Param)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(float*)&params[8] = Param;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19330], params.ptr, cast(void*)0);
	}
	final void SetVectorParameter(ScriptName ParameterName, Vector Param)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Vector*)&params[8] = Param;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19333], params.ptr, cast(void*)0);
	}
	final void SetColorParameter(ScriptName ParameterName, UObject.LinearColor Param)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.LinearColor*)&params[8] = Param;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19336], params.ptr, cast(void*)0);
	}
	final void SetExtColorParameter(ScriptName ParameterName, float Red, float Green, float Blue, float Alpha)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(float*)&params[8] = Red;
		*cast(float*)&params[12] = Green;
		*cast(float*)&params[16] = Blue;
		*cast(float*)&params[20] = Alpha;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19339], params.ptr, cast(void*)0);
	}
	final void SetActorParameter(ScriptName ParameterName, Actor Param)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Actor*)&params[8] = Param;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19345], params.ptr, cast(void*)0);
	}
}
