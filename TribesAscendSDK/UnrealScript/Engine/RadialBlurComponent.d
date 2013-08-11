module UnrealScript.Engine.RadialBlurComponent;

import ScriptClasses;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Engine.Scene;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface RadialBlurComponent : ActorComponent
{
	public @property final auto ref UObject.Matrix LocalToWorld() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 128); }
	public @property final bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x2) != 0; }
	public @property final bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x2; } return val; }
	public @property final bool bRenderAsVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x1) != 0; }
	public @property final bool bRenderAsVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x1; } return val; }
	public @property final auto ref float DistanceFalloffExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float MaxCullDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref float BlurOpacity() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref float BlurFalloffExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref float BlurScale() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref Scene.ESceneDepthPriorityGroup DepthPriorityGroup() { return *cast(Scene.ESceneDepthPriorityGroup*)(cast(size_t)cast(void*)this + 92); }
	// WARNING: Property 'Material' has the same name as a defined type!
	final void SetMaterial(MaterialInterface InMaterial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = InMaterial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24943], params.ptr, cast(void*)0);
	}
	final void SetBlurScale(float InBlurScale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = InBlurScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24945], params.ptr, cast(void*)0);
	}
	final void SetBlurFalloffExponent(float InBlurFalloffExponent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = InBlurFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24947], params.ptr, cast(void*)0);
	}
	final void SetBlurOpacity(float InBlurOpacity)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = InBlurOpacity;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24949], params.ptr, cast(void*)0);
	}
	final void SetEnabled(bool bInEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24951], params.ptr, cast(void*)0);
	}
	final void OnUpdatePropertyBlurScale()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24953], cast(void*)0, cast(void*)0);
	}
	final void OnUpdatePropertyBlurFalloffExponent()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24954], cast(void*)0, cast(void*)0);
	}
	final void OnUpdatePropertyBlurOpacity()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24955], cast(void*)0, cast(void*)0);
	}
}
