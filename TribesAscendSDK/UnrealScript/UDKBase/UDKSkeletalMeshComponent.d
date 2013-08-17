module UnrealScript.UDKBase.UDKSkeletalMeshComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkeletalMeshComponent;

extern(C++) interface UDKSkeletalMeshComponent : SkeletalMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKSkeletalMeshComponent")()); }
	private static __gshared UDKSkeletalMeshComponent mDefaultProperties;
	@property final static UDKSkeletalMeshComponent DefaultProperties() { mixin(MGDPC!(UDKSkeletalMeshComponent, "UDKSkeletalMeshComponent UDKBase.Default__UDKSkeletalMeshComponent")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPreloadTextures;
			ScriptFunction mSetFOV;
		}
		public @property static final
		{
			ScriptFunction PreloadTextures() { mixin(MGF!("mPreloadTextures", "Function UDKBase.UDKSkeletalMeshComponent.PreloadTextures")()); }
			ScriptFunction SetFOV() { mixin(MGF!("mSetFOV", "Function UDKBase.UDKSkeletalMeshComponent.SetFOV")()); }
		}
	}
	@property final
	{
		auto ref
		{
			float ClearStreamingTime() { mixin(MGPC!("float", 1520)()); }
			float FOV() { mixin(MGPC!("float", 1512)()); }
		}
		bool bForceLoadTextures() { mixin(MGBPC!(1516, 0x1)()); }
		bool bForceLoadTextures(bool val) { mixin(MSBPC!(1516, 0x1)()); }
	}
final:
	void PreloadTextures(bool bForcePreload, float ClearTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bForcePreload;
		*cast(float*)&params[4] = ClearTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.PreloadTextures, params.ptr, cast(void*)0);
	}
	void SetFOV(float NewFOV)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewFOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFOV, params.ptr, cast(void*)0);
	}
}
