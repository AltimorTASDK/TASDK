module UnrealScript.TribesGame.TrMainMenuContentData;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrMainMenuMeshInfo;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrPaperDollMainMenu;

extern(C++) interface TrMainMenuContentData : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrMainMenuContentData")()); }
	private static __gshared TrMainMenuContentData mDefaultProperties;
	@property final static TrMainMenuContentData DefaultProperties() { mixin(MGDPC!(TrMainMenuContentData, "TrMainMenuContentData TribesGame.Default__TrMainMenuContentData")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSendPaperDollANewMesh;
			ScriptFunction mPreloadTextures;
		}
		public @property static final
		{
			ScriptFunction SendPaperDollANewMesh() { mixin(MGF!("mSendPaperDollANewMesh", "Function TribesGame.TrMainMenuContentData.SendPaperDollANewMesh")()); }
			ScriptFunction PreloadTextures() { mixin(MGF!("mPreloadTextures", "Function TribesGame.TrMainMenuContentData.PreloadTextures")()); }
		}
	}
	struct MeshData
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrMainMenuContentData.MeshData")()); }
		@property final auto ref
		{
			TrMainMenuMeshInfo MainMeshInfo() { mixin(MGPS!("TrMainMenuMeshInfo", 4)()); }
			TrObject.EContentDataType ContentDataType() { mixin(MGPS!("TrObject.EContentDataType", 0)()); }
		}
	}
	@property final auto ref ScriptArray!(TrMainMenuContentData.MeshData) m_MeshData() { mixin(MGPC!("ScriptArray!(TrMainMenuContentData.MeshData)", 60)()); }
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
