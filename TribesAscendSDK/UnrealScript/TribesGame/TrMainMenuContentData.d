module UnrealScript.TribesGame.TrMainMenuContentData;

import ScriptClasses;
import UnrealScript.TribesGame.TrMainMenuMeshInfo;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrPaperDollMainMenu;

extern(C++) interface TrMainMenuContentData : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrMainMenuContentData")); }
	private static __gshared TrMainMenuContentData mDefaultProperties;
	@property final static TrMainMenuContentData DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrMainMenuContentData)("TrMainMenuContentData TribesGame.Default__TrMainMenuContentData")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSendPaperDollANewMesh;
			ScriptFunction mPreloadTextures;
		}
		public @property static final
		{
			ScriptFunction SendPaperDollANewMesh() { return mSendPaperDollANewMesh ? mSendPaperDollANewMesh : (mSendPaperDollANewMesh = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrMainMenuContentData.SendPaperDollANewMesh")); }
			ScriptFunction PreloadTextures() { return mPreloadTextures ? mPreloadTextures : (mPreloadTextures = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrMainMenuContentData.PreloadTextures")); }
		}
	}
	struct MeshData
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrMainMenuContentData.MeshData")); }
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
		(cast(ScriptObject)this).ProcessEvent(Functions.SendPaperDollANewMesh, params.ptr, cast(void*)0);
	}
	void PreloadTextures(float ForceDuration)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ForceDuration;
		(cast(ScriptObject)this).ProcessEvent(Functions.PreloadTextures, params.ptr, cast(void*)0);
	}
}
