module UnrealScript.TribesGame.TrSkeletalMeshComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkeletalMeshComponent;

extern(C++) interface TrSkeletalMeshComponent : SkeletalMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrSkeletalMeshComponent")()); }
	private static __gshared TrSkeletalMeshComponent mDefaultProperties;
	@property final static TrSkeletalMeshComponent DefaultProperties() { mixin(MGDPC!(TrSkeletalMeshComponent, "TrSkeletalMeshComponent TribesGame.Default__TrSkeletalMeshComponent")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPreloadTextures;
			ScriptFunction mSetFOV;
		}
		public @property static final
		{
			ScriptFunction PreloadTextures() { mixin(MGF!("mPreloadTextures", "Function TribesGame.TrSkeletalMeshComponent.PreloadTextures")()); }
			ScriptFunction SetFOV() { mixin(MGF!("mSetFOV", "Function TribesGame.TrSkeletalMeshComponent.SetFOV")()); }
		}
	}
	@property final
	{
		auto ref
		{
			float m_fClearStreamingTime() { mixin(MGPC!("float", 1520)()); }
			float m_fFOV() { mixin(MGPC!("float", 1512)()); }
		}
		bool m_bForceLoadTextures() { mixin(MGBPC!(1516, 0x1)()); }
		bool m_bForceLoadTextures(bool val) { mixin(MSBPC!(1516, 0x1)()); }
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
