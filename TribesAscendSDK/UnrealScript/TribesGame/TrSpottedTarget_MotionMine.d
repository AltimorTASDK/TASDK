module UnrealScript.TribesGame.TrSpottedTarget_MotionMine;

import ScriptClasses;
import UnrealScript.TribesGame.TrSpottedTarget;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Core.UObject;

extern(C++) interface TrSpottedTarget_MotionMine : TrSpottedTarget
{
public extern(D):
	@property final auto ref
	{
		float m_fMarkerBlinkSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 516); }
		float m_fCurrentMarkerTime() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
	}
final:
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112580], params.ptr, cast(void*)0);
	}
	Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112582], params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
	UObject.LinearColor GetMarkerColor()
	{
		ubyte params[16];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112584], params.ptr, cast(void*)0);
		return *cast(UObject.LinearColor*)params.ptr;
	}
	bool ShouldRenderMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112586], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
