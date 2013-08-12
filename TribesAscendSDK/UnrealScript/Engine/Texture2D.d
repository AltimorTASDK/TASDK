module UnrealScript.Engine.Texture2D;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture;

extern(C++) interface Texture2D : Texture
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Texture2D")); }
	private static __gshared Texture2D mDefaultProperties;
	@property final static Texture2D DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Texture2D)("Texture2D Engine.Default__Texture2D")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetForceMipLevelsToBeResident;
			ScriptFunction mCreate;
		}
		public @property static final
		{
			ScriptFunction SetForceMipLevelsToBeResident() { return mSetForceMipLevelsToBeResident ? mSetForceMipLevelsToBeResident : (mSetForceMipLevelsToBeResident = ScriptObject.Find!(ScriptFunction)("Function Engine.Texture2D.SetForceMipLevelsToBeResident")); }
			ScriptFunction Create() { return mCreate ? mCreate : (mCreate = ScriptObject.Find!(ScriptFunction)("Function Engine.Texture2D.Create")); }
		}
	}
	struct Texture2DMipMap
	{
		private ubyte __buffer__[60];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Texture2D.Texture2DMipMap")); }
		@property final auto ref
		{
			int SizeY() { return *cast(int*)(cast(size_t)&this + 56); }
			int SizeX() { return *cast(int*)(cast(size_t)&this + 52); }
			UObject.UntypedBulkData_Mirror Data() { return *cast(UObject.UntypedBulkData_Mirror*)(cast(size_t)&this + 0); }
		}
	}
	struct TextureLinkedListMirror
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Texture2D.TextureLinkedListMirror")); }
		@property final auto ref
		{
			UObject.Pointer PrevLink() { return *cast(UObject.Pointer*)(cast(size_t)&this + 8); }
			UObject.Pointer Next() { return *cast(UObject.Pointer*)(cast(size_t)&this + 4); }
			UObject.Pointer Element() { return *cast(UObject.Pointer*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ubyte) SystemMemoryData() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 324); }
			float Timer() { return *cast(float*)(cast(size_t)cast(void*)this + 364); }
			int FirstResourceMemMip() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
			UObject.Pointer ResourceMem() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 356); }
			int MipTailBaseIdx() { return *cast(int*)(cast(size_t)cast(void*)this + 352); }
			int StreamingIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 348); }
			Texture2D.TextureLinkedListMirror StreamableTexturesLink() { return *cast(Texture2D.TextureLinkedListMirror*)(cast(size_t)cast(void*)this + 336); }
			UObject.ThreadSafeCounter PendingMipChangeRequestStatus() { return *cast(UObject.ThreadSafeCounter*)(cast(size_t)cast(void*)this + 320); }
			int ResidentMips() { return *cast(int*)(cast(size_t)cast(void*)this + 316); }
			int RequestedMips() { return *cast(int*)(cast(size_t)cast(void*)this + 312); }
			UObject.Guid TextureFileCacheGuid() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 296); }
			ScriptName TextureFileCacheName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 288); }
			float ForceMipLevelsToBeResidentTimestamp() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
			Texture.TextureAddress AddressY() { return *cast(Texture.TextureAddress*)(cast(size_t)cast(void*)this + 278); }
			Texture.TextureAddress AddressX() { return *cast(Texture.TextureAddress*)(cast(size_t)cast(void*)this + 277); }
			// WARNING: Property 'Format' has the same name as a defined type!
			int OriginalSizeY() { return *cast(int*)(cast(size_t)cast(void*)this + 272); }
			int OriginalSizeX() { return *cast(int*)(cast(size_t)cast(void*)this + 268); }
			int SizeY() { return *cast(int*)(cast(size_t)cast(void*)this + 264); }
			int SizeX() { return *cast(int*)(cast(size_t)cast(void*)this + 260); }
			UObject.IndirectArray_Mirror CachedPVRTCMips() { return *cast(UObject.IndirectArray_Mirror*)(cast(size_t)cast(void*)this + 248); }
			UObject.IndirectArray_Mirror Mips() { return *cast(UObject.IndirectArray_Mirror*)(cast(size_t)cast(void*)this + 236); }
		}
		bool bGlobalForceMipLevelsToBeResident() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x10) != 0; }
		bool bGlobalForceMipLevelsToBeResident(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x10; } return val; }
		bool bForceMiplevelsToBeResident() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x8) != 0; }
		bool bForceMiplevelsToBeResident(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x8; } return val; }
		bool bHasBeenLoadedFromPersistentArchive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x4) != 0; }
		bool bHasBeenLoadedFromPersistentArchive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x4; } return val; }
		bool bHasCancelationPending() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x2) != 0; }
		bool bHasCancelationPending(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x2; } return val; }
		bool bIsStreamable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x1) != 0; }
		bool bIsStreamable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x1; } return val; }
	}
final:
	void SetForceMipLevelsToBeResident(float Seconds, int CinematicTextureGroups)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = Seconds;
		*cast(int*)&params[4] = CinematicTextureGroups;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetForceMipLevelsToBeResident, params.ptr, cast(void*)0);
	}
	static Texture2D Create(int InSizeX, int InSizeY, Texture.EPixelFormat InFormat)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = InSizeX;
		*cast(int*)&params[4] = InSizeY;
		*cast(Texture.EPixelFormat*)&params[8] = InFormat;
		StaticClass.ProcessEvent(Functions.Create, params.ptr, cast(void*)0);
		return *cast(Texture2D*)&params[12];
	}
}
