module UnrealScript.TribesGame.TrMainMenuMeshInfo;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleSystem;

extern(C++) interface TrMainMenuMeshInfo : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrMainMenuMeshInfo")); }
	private static __gshared TrMainMenuMeshInfo mDefaultProperties;
	@property final static TrMainMenuMeshInfo DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrMainMenuMeshInfo)("TrMainMenuMeshInfo TribesGame.Default__TrMainMenuMeshInfo")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPreloadTextures;
		public @property static final ScriptFunction PreloadTextures() { return mPreloadTextures ? mPreloadTextures : (mPreloadTextures = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrMainMenuMeshInfo.PreloadTextures")); }
	}
	struct ParticleSystemInfo
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrMainMenuMeshInfo.ParticleSystemInfo")); }
		@property final auto ref
		{
			ScriptName SocketName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
			// WARNING: Property 'ParticleSystem' has the same name as a defined type!
		}
	}
	@property final auto ref
	{
		ScriptArray!(TrMainMenuMeshInfo) Children() { return *cast(ScriptArray!(TrMainMenuMeshInfo)*)(cast(size_t)cast(void*)this + 116); }
		ScriptArray!(TrMainMenuMeshInfo.ParticleSystemInfo) AttachedParticleSystems() { return *cast(ScriptArray!(TrMainMenuMeshInfo.ParticleSystemInfo)*)(cast(size_t)cast(void*)this + 136); }
		ScriptName ParentSocketName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 128); }
		TrObject.PaperDollInfo MeshInfo() { return *cast(TrObject.PaperDollInfo*)(cast(size_t)cast(void*)this + 60); }
	}
	final void PreloadTextures(float ForceDuration)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ForceDuration;
		(cast(ScriptObject)this).ProcessEvent(Functions.PreloadTextures, params.ptr, cast(void*)0);
	}
}
