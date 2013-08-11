module UnrealScript.TribesGame.TrMainMenuMeshInfo;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleSystem;

extern(C++) interface TrMainMenuMeshInfo : UObject
{
	struct ParticleSystemInfo
	{
		public @property final auto ref ScriptName SocketName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __SocketName[8];
		// WARNING: Property 'ParticleSystem' has the same name as a defined type!
	}
	public @property final auto ref ScriptArray!(TrMainMenuMeshInfo) Children() { return *cast(ScriptArray!(TrMainMenuMeshInfo)*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref ScriptArray!(TrMainMenuMeshInfo.ParticleSystemInfo) AttachedParticleSystems() { return *cast(ScriptArray!(TrMainMenuMeshInfo.ParticleSystemInfo)*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref ScriptName ParentSocketName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref TrObject.PaperDollInfo MeshInfo() { return *cast(TrObject.PaperDollInfo*)(cast(size_t)cast(void*)this + 60); }
	final void PreloadTextures(float ForceDuration)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ForceDuration;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98700], params.ptr, cast(void*)0);
	}
}
