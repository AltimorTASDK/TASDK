module UnrealScript.TribesGame.TrMainMenuContentData;

import ScriptClasses;
import UnrealScript.TribesGame.TrMainMenuMeshInfo;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrPaperDollMainMenu;

extern(C++) interface TrMainMenuContentData : UObject
{
public extern(D):
	struct MeshData
	{
		private ubyte __buffer__[8];
	public extern(D):
		@property final auto ref
		{
			TrMainMenuMeshInfo MainMeshInfo() { return *cast(TrMainMenuMeshInfo*)(cast(size_t)&this + 4); }
			TrObject.EContentDataType ContentDataType() { return *cast(TrObject.EContentDataType*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref ScriptArray!(TrMainMenuContentData.MeshData) m_MeshData() { return *cast(ScriptArray!(TrMainMenuContentData.MeshData)*)(cast(size_t)cast(void*)this + 60); }
final:
	void SendPaperDollANewMesh(TrPaperDollMainMenu MainMenuPaperDoll, TrObject.EContentDataType ContentDataType)
	{
		ubyte params[5];
		params[] = 0;
		*cast(TrPaperDollMainMenu*)params.ptr = MainMenuPaperDoll;
		*cast(TrObject.EContentDataType*)&params[4] = ContentDataType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98683], params.ptr, cast(void*)0);
	}
	void PreloadTextures(float ForceDuration)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ForceDuration;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98687], params.ptr, cast(void*)0);
	}
}
