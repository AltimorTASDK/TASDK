module UnrealScript.TribesGame.TrMainMenuMeshInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleSystem;

extern(C++) interface TrMainMenuMeshInfo : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrMainMenuMeshInfo")()); }
	private static __gshared TrMainMenuMeshInfo mDefaultProperties;
	@property final static TrMainMenuMeshInfo DefaultProperties() { mixin(MGDPC!(TrMainMenuMeshInfo, "TrMainMenuMeshInfo TribesGame.Default__TrMainMenuMeshInfo")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPreloadTextures;
		public @property static final ScriptFunction PreloadTextures() { mixin(MGF!("mPreloadTextures", "Function TribesGame.TrMainMenuMeshInfo.PreloadTextures")()); }
	}
	struct ParticleSystemInfo
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrMainMenuMeshInfo.ParticleSystemInfo")()); }
		@property final auto ref
		{
			ScriptName SocketName() { mixin(MGPS!("ScriptName", 4)()); }
			// WARNING: Property 'ParticleSystem' has the same name as a defined type!
		}
	}
	@property final auto ref
	{
		ScriptArray!(TrMainMenuMeshInfo) Children() { mixin(MGPC!("ScriptArray!(TrMainMenuMeshInfo)", 116)()); }
		ScriptArray!(TrMainMenuMeshInfo.ParticleSystemInfo) AttachedParticleSystems() { mixin(MGPC!("ScriptArray!(TrMainMenuMeshInfo.ParticleSystemInfo)", 136)()); }
		ScriptName ParentSocketName() { mixin(MGPC!("ScriptName", 128)()); }
		TrObject.PaperDollInfo MeshInfo() { mixin(MGPC!("TrObject.PaperDollInfo", 60)()); }
	}
	final void PreloadTextures(float ForceDuration)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ForceDuration;
		(cast(ScriptObject)this).ProcessEvent(Functions.PreloadTextures, params.ptr, cast(void*)0);
	}
}
