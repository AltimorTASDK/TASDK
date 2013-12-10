module UnrealScript.Engine.RadialBlurComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Engine.Scene;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface RadialBlurComponent : ActorComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.RadialBlurComponent")); }
	private static __gshared RadialBlurComponent mDefaultProperties;
	@property final static RadialBlurComponent DefaultProperties() { mixin(MGDPC("RadialBlurComponent", "RadialBlurComponent Engine.Default__RadialBlurComponent")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetMaterial;
			ScriptFunction mSetBlurScale;
			ScriptFunction mSetBlurFalloffExponent;
			ScriptFunction mSetBlurOpacity;
			ScriptFunction mSetEnabled;
			ScriptFunction mOnUpdatePropertyBlurScale;
			ScriptFunction mOnUpdatePropertyBlurFalloffExponent;
			ScriptFunction mOnUpdatePropertyBlurOpacity;
		}
		public @property static final
		{
			ScriptFunction SetMaterial() { mixin(MGF("mSetMaterial", "Function Engine.RadialBlurComponent.SetMaterial")); }
			ScriptFunction SetBlurScale() { mixin(MGF("mSetBlurScale", "Function Engine.RadialBlurComponent.SetBlurScale")); }
			ScriptFunction SetBlurFalloffExponent() { mixin(MGF("mSetBlurFalloffExponent", "Function Engine.RadialBlurComponent.SetBlurFalloffExponent")); }
			ScriptFunction SetBlurOpacity() { mixin(MGF("mSetBlurOpacity", "Function Engine.RadialBlurComponent.SetBlurOpacity")); }
			ScriptFunction SetEnabled() { mixin(MGF("mSetEnabled", "Function Engine.RadialBlurComponent.SetEnabled")); }
			ScriptFunction OnUpdatePropertyBlurScale() { mixin(MGF("mOnUpdatePropertyBlurScale", "Function Engine.RadialBlurComponent.OnUpdatePropertyBlurScale")); }
			ScriptFunction OnUpdatePropertyBlurFalloffExponent() { mixin(MGF("mOnUpdatePropertyBlurFalloffExponent", "Function Engine.RadialBlurComponent.OnUpdatePropertyBlurFalloffExponent")); }
			ScriptFunction OnUpdatePropertyBlurOpacity() { mixin(MGF("mOnUpdatePropertyBlurOpacity", "Function Engine.RadialBlurComponent.OnUpdatePropertyBlurOpacity")); }
		}
	}
	@property final
	{
		auto ref
		{
			UObject.Matrix LocalToWorld() { mixin(MGPC("UObject.Matrix", 128)); }
			float DistanceFalloffExponent() { mixin(MGPC("float", 112)); }
			float MaxCullDistance() { mixin(MGPC("float", 108)); }
			float BlurOpacity() { mixin(MGPC("float", 104)); }
			float BlurFalloffExponent() { mixin(MGPC("float", 100)); }
			float BlurScale() { mixin(MGPC("float", 96)); }
			Scene.ESceneDepthPriorityGroup DepthPriorityGroup() { mixin(MGPC("Scene.ESceneDepthPriorityGroup", 92)); }
			MaterialInterface MaterialVar() { mixin(MGPC("MaterialInterface", 88)); }
		}
		bool bEnabled() { mixin(MGBPC(116, 0x2)); }
		bool bEnabled(bool val) { mixin(MSBPC(116, 0x2)); }
		bool bRenderAsVelocity() { mixin(MGBPC(116, 0x1)); }
		bool bRenderAsVelocity(bool val) { mixin(MSBPC(116, 0x1)); }
	}
final:
	void SetMaterial(MaterialInterface InMaterial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = InMaterial;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMaterial, params.ptr, cast(void*)0);
	}
	void SetBlurScale(float InBlurScale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = InBlurScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBlurScale, params.ptr, cast(void*)0);
	}
	void SetBlurFalloffExponent(float InBlurFalloffExponent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = InBlurFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBlurFalloffExponent, params.ptr, cast(void*)0);
	}
	void SetBlurOpacity(float InBlurOpacity)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = InBlurOpacity;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBlurOpacity, params.ptr, cast(void*)0);
	}
	void SetEnabled(bool bInEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetEnabled, params.ptr, cast(void*)0);
	}
	void OnUpdatePropertyBlurScale()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUpdatePropertyBlurScale, cast(void*)0, cast(void*)0);
	}
	void OnUpdatePropertyBlurFalloffExponent()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUpdatePropertyBlurFalloffExponent, cast(void*)0, cast(void*)0);
	}
	void OnUpdatePropertyBlurOpacity()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUpdatePropertyBlurOpacity, cast(void*)0, cast(void*)0);
	}
}
