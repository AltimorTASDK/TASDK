module UnrealScript.Engine.Texture2D;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture;

extern(C++) interface Texture2D : Texture
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Texture2D")); }
	private static __gshared Texture2D mDefaultProperties;
	@property final static Texture2D DefaultProperties() { mixin(MGDPC("Texture2D", "Texture2D Engine.Default__Texture2D")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetForceMipLevelsToBeResident;
			ScriptFunction mCreate;
		}
		public @property static final
		{
			ScriptFunction SetForceMipLevelsToBeResident() { mixin(MGF("mSetForceMipLevelsToBeResident", "Function Engine.Texture2D.SetForceMipLevelsToBeResident")); }
			ScriptFunction Create() { mixin(MGF("mCreate", "Function Engine.Texture2D.Create")); }
		}
	}
	struct Texture2DMipMap
	{
		private ubyte __buffer__[60];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Texture2D.Texture2DMipMap")); }
		@property final auto ref
		{
			int SizeY() { mixin(MGPS("int", 56)); }
			int SizeX() { mixin(MGPS("int", 52)); }
			UObject.UntypedBulkData_Mirror Data() { mixin(MGPS("UObject.UntypedBulkData_Mirror", 0)); }
		}
	}
	struct TextureLinkedListMirror
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Texture2D.TextureLinkedListMirror")); }
		@property final auto ref
		{
			Pointer PrevLink() { mixin(MGPS("Pointer", 8)); }
			Pointer Next() { mixin(MGPS("Pointer", 4)); }
			Pointer Element() { mixin(MGPS("Pointer", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ubyte) SystemMemoryData() { mixin(MGPC("ScriptArray!(ubyte)", 324)); }
			float Timer() { mixin(MGPC("float", 364)); }
			int FirstResourceMemMip() { mixin(MGPC("int", 360)); }
			Pointer ResourceMem() { mixin(MGPC("Pointer", 356)); }
			int MipTailBaseIdx() { mixin(MGPC("int", 352)); }
			int StreamingIndex() { mixin(MGPC("int", 348)); }
			Texture2D.TextureLinkedListMirror StreamableTexturesLink() { mixin(MGPC("Texture2D.TextureLinkedListMirror", 336)); }
			UObject.ThreadSafeCounter PendingMipChangeRequestStatus() { mixin(MGPC("UObject.ThreadSafeCounter", 320)); }
			int ResidentMips() { mixin(MGPC("int", 316)); }
			int RequestedMips() { mixin(MGPC("int", 312)); }
			UObject.Guid TextureFileCacheGuid() { mixin(MGPC("UObject.Guid", 296)); }
			ScriptName TextureFileCacheName() { mixin(MGPC("ScriptName", 288)); }
			float ForceMipLevelsToBeResidentTimestamp() { mixin(MGPC("float", 284)); }
			Texture.TextureAddress AddressY() { mixin(MGPC("Texture.TextureAddress", 278)); }
			Texture.TextureAddress AddressX() { mixin(MGPC("Texture.TextureAddress", 277)); }
			// WARNING: Property 'Format' has the same name as a defined type!
			int OriginalSizeY() { mixin(MGPC("int", 272)); }
			int OriginalSizeX() { mixin(MGPC("int", 268)); }
			int SizeY() { mixin(MGPC("int", 264)); }
			int SizeX() { mixin(MGPC("int", 260)); }
			UObject.IndirectArray_Mirror CachedPVRTCMips() { mixin(MGPC("UObject.IndirectArray_Mirror", 248)); }
			UObject.IndirectArray_Mirror Mips() { mixin(MGPC("UObject.IndirectArray_Mirror", 236)); }
		}
		bool bGlobalForceMipLevelsToBeResident() { mixin(MGBPC(280, 0x10)); }
		bool bGlobalForceMipLevelsToBeResident(bool val) { mixin(MSBPC(280, 0x10)); }
		bool bForceMiplevelsToBeResident() { mixin(MGBPC(280, 0x8)); }
		bool bForceMiplevelsToBeResident(bool val) { mixin(MSBPC(280, 0x8)); }
		bool bHasBeenLoadedFromPersistentArchive() { mixin(MGBPC(280, 0x4)); }
		bool bHasBeenLoadedFromPersistentArchive(bool val) { mixin(MSBPC(280, 0x4)); }
		bool bHasCancelationPending() { mixin(MGBPC(280, 0x2)); }
		bool bHasCancelationPending(bool val) { mixin(MSBPC(280, 0x2)); }
		bool bIsStreamable() { mixin(MGBPC(280, 0x1)); }
		bool bIsStreamable(bool val) { mixin(MSBPC(280, 0x1)); }
	}
final:
	void SetForceMipLevelsToBeResident(float Seconds, int* CinematicTextureGroups = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = Seconds;
		if (CinematicTextureGroups !is null)
			*cast(int*)&params[4] = *CinematicTextureGroups;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetForceMipLevelsToBeResident, params.ptr, cast(void*)0);
	}
	static Texture2D Create(int InSizeX, int InSizeY, Texture.EPixelFormat* InFormat = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = InSizeX;
		*cast(int*)&params[4] = InSizeY;
		if (InFormat !is null)
			*cast(Texture.EPixelFormat*)&params[8] = *InFormat;
		StaticClass.ProcessEvent(Functions.Create, params.ptr, cast(void*)0);
		return *cast(Texture2D*)&params[12];
	}
}
