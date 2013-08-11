module UnrealScript.Engine.Texture2D;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture;

extern(C++) interface Texture2D : Texture
{
	struct Texture2DMipMap
	{
		public @property final auto ref int SizeY() { return *cast(int*)(cast(size_t)&this + 56); }
		private ubyte __SizeY[4];
		public @property final auto ref int SizeX() { return *cast(int*)(cast(size_t)&this + 52); }
		private ubyte __SizeX[4];
		public @property final auto ref UObject.UntypedBulkData_Mirror Data() { return *cast(UObject.UntypedBulkData_Mirror*)(cast(size_t)&this + 0); }
		private ubyte __Data[52];
	}
	struct TextureLinkedListMirror
	{
		public @property final auto ref UObject.Pointer PrevLink() { return *cast(UObject.Pointer*)(cast(size_t)&this + 8); }
		private ubyte __PrevLink[4];
		public @property final auto ref UObject.Pointer Next() { return *cast(UObject.Pointer*)(cast(size_t)&this + 4); }
		private ubyte __Next[4];
		public @property final auto ref UObject.Pointer Element() { return *cast(UObject.Pointer*)(cast(size_t)&this + 0); }
		private ubyte __Element[4];
	}
	public @property final auto ref ScriptArray!(ubyte) SystemMemoryData() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 324); }
	public @property final auto ref float Timer() { return *cast(float*)(cast(size_t)cast(void*)this + 364); }
	public @property final auto ref int FirstResourceMemMip() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref UObject.Pointer ResourceMem() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 356); }
	public @property final auto ref int MipTailBaseIdx() { return *cast(int*)(cast(size_t)cast(void*)this + 352); }
	public @property final auto ref int StreamingIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 348); }
	public @property final auto ref Texture2D.TextureLinkedListMirror StreamableTexturesLink() { return *cast(Texture2D.TextureLinkedListMirror*)(cast(size_t)cast(void*)this + 336); }
	public @property final auto ref UObject.ThreadSafeCounter PendingMipChangeRequestStatus() { return *cast(UObject.ThreadSafeCounter*)(cast(size_t)cast(void*)this + 320); }
	public @property final auto ref int ResidentMips() { return *cast(int*)(cast(size_t)cast(void*)this + 316); }
	public @property final auto ref int RequestedMips() { return *cast(int*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref UObject.Guid TextureFileCacheGuid() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref ScriptName TextureFileCacheName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref float ForceMipLevelsToBeResidentTimestamp() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
	public @property final bool bGlobalForceMipLevelsToBeResident() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x10) != 0; }
	public @property final bool bGlobalForceMipLevelsToBeResident(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x10; } return val; }
	public @property final bool bForceMiplevelsToBeResident() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x8) != 0; }
	public @property final bool bForceMiplevelsToBeResident(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x8; } return val; }
	public @property final bool bHasBeenLoadedFromPersistentArchive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x4) != 0; }
	public @property final bool bHasBeenLoadedFromPersistentArchive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x4; } return val; }
	public @property final bool bHasCancelationPending() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x2) != 0; }
	public @property final bool bHasCancelationPending(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x2; } return val; }
	public @property final bool bIsStreamable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x1) != 0; }
	public @property final bool bIsStreamable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x1; } return val; }
	public @property final auto ref Texture.TextureAddress AddressY() { return *cast(Texture.TextureAddress*)(cast(size_t)cast(void*)this + 278); }
	public @property final auto ref Texture.TextureAddress AddressX() { return *cast(Texture.TextureAddress*)(cast(size_t)cast(void*)this + 277); }
	// WARNING: Property 'Format' has the same name as a defined type!
	public @property final auto ref int OriginalSizeY() { return *cast(int*)(cast(size_t)cast(void*)this + 272); }
	public @property final auto ref int OriginalSizeX() { return *cast(int*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref int SizeY() { return *cast(int*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref int SizeX() { return *cast(int*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref UObject.IndirectArray_Mirror CachedPVRTCMips() { return *cast(UObject.IndirectArray_Mirror*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref UObject.IndirectArray_Mirror Mips() { return *cast(UObject.IndirectArray_Mirror*)(cast(size_t)cast(void*)this + 236); }
	final void SetForceMipLevelsToBeResident(float Seconds, int CinematicTextureGroups)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = Seconds;
		*cast(int*)&params[4] = CinematicTextureGroups;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5141], params.ptr, cast(void*)0);
	}
	final Texture2D Create(int InSizeX, int InSizeY, Texture.EPixelFormat InFormat)
	{
		ubyte params[13];
		params[] = 0;
		*cast(int*)params.ptr = InSizeX;
		*cast(int*)&params[4] = InSizeY;
		*cast(Texture.EPixelFormat*)&params[8] = InFormat;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5144], params.ptr, cast(void*)0);
		return *cast(Texture2D*)&params[12];
	}
}
