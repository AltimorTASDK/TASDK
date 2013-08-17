module UnrealScript.TribesGame.TrUser;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.GFxTrMenuMoviePlayer;

extern(C++) interface TrUser : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrUser")); }
	private static __gshared TrUser mDefaultProperties;
	@property final static TrUser DefaultProperties() { mixin(MGDPC("TrUser", "TrUser TribesGame.Default__TrUser")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mNeedsToSeeNewItemsClass;
			ScriptFunction mNeedsToSeeNewItemsType;
			ScriptFunction mNeedToSeeNewBundle;
			ScriptFunction mNeedsToSeeClanTags;
			ScriptFunction mNeedToSeeAnyNewItem;
			ScriptFunction mIsFavoriteServer;
			ScriptFunction mNeedsToSeeNewItem;
			ScriptFunction mDecryptPassword;
			ScriptFunction mEncryptPassword;
			ScriptFunction mInitialize;
			ScriptFunction mSaveCredentials;
			ScriptFunction mSaveClassId;
			ScriptFunction mSaveGameType;
			ScriptFunction mSaveDidLogin;
			ScriptFunction mSaveChoseRegion;
			ScriptFunction mSeenNewGametype;
			ScriptFunction mSeenNewItemsMain;
			ScriptFunction mSeenNewBundlesMain;
			ScriptFunction mSeenClanTags;
			ScriptFunction mSeenNewBundle;
			ScriptFunction mSeenNewItemsClass;
			ScriptFunction mSeenNewItemsType;
			ScriptFunction mNeedsToSeeNewBundle;
			ScriptFunction mSetFavoriteServer;
		}
		public @property static final
		{
			ScriptFunction NeedsToSeeNewItemsClass() { mixin(MGF("mNeedsToSeeNewItemsClass", "Function TribesGame.TrUser.NeedsToSeeNewItemsClass")); }
			ScriptFunction NeedsToSeeNewItemsType() { mixin(MGF("mNeedsToSeeNewItemsType", "Function TribesGame.TrUser.NeedsToSeeNewItemsType")); }
			ScriptFunction NeedToSeeNewBundle() { mixin(MGF("mNeedToSeeNewBundle", "Function TribesGame.TrUser.NeedToSeeNewBundle")); }
			ScriptFunction NeedsToSeeClanTags() { mixin(MGF("mNeedsToSeeClanTags", "Function TribesGame.TrUser.NeedsToSeeClanTags")); }
			ScriptFunction NeedToSeeAnyNewItem() { mixin(MGF("mNeedToSeeAnyNewItem", "Function TribesGame.TrUser.NeedToSeeAnyNewItem")); }
			ScriptFunction IsFavoriteServer() { mixin(MGF("mIsFavoriteServer", "Function TribesGame.TrUser.IsFavoriteServer")); }
			ScriptFunction NeedsToSeeNewItem() { mixin(MGF("mNeedsToSeeNewItem", "Function TribesGame.TrUser.NeedsToSeeNewItem")); }
			ScriptFunction DecryptPassword() { mixin(MGF("mDecryptPassword", "Function TribesGame.TrUser.DecryptPassword")); }
			ScriptFunction EncryptPassword() { mixin(MGF("mEncryptPassword", "Function TribesGame.TrUser.EncryptPassword")); }
			ScriptFunction Initialize() { mixin(MGF("mInitialize", "Function TribesGame.TrUser.Initialize")); }
			ScriptFunction SaveCredentials() { mixin(MGF("mSaveCredentials", "Function TribesGame.TrUser.SaveCredentials")); }
			ScriptFunction SaveClassId() { mixin(MGF("mSaveClassId", "Function TribesGame.TrUser.SaveClassId")); }
			ScriptFunction SaveGameType() { mixin(MGF("mSaveGameType", "Function TribesGame.TrUser.SaveGameType")); }
			ScriptFunction SaveDidLogin() { mixin(MGF("mSaveDidLogin", "Function TribesGame.TrUser.SaveDidLogin")); }
			ScriptFunction SaveChoseRegion() { mixin(MGF("mSaveChoseRegion", "Function TribesGame.TrUser.SaveChoseRegion")); }
			ScriptFunction SeenNewGametype() { mixin(MGF("mSeenNewGametype", "Function TribesGame.TrUser.SeenNewGametype")); }
			ScriptFunction SeenNewItemsMain() { mixin(MGF("mSeenNewItemsMain", "Function TribesGame.TrUser.SeenNewItemsMain")); }
			ScriptFunction SeenNewBundlesMain() { mixin(MGF("mSeenNewBundlesMain", "Function TribesGame.TrUser.SeenNewBundlesMain")); }
			ScriptFunction SeenClanTags() { mixin(MGF("mSeenClanTags", "Function TribesGame.TrUser.SeenClanTags")); }
			ScriptFunction SeenNewBundle() { mixin(MGF("mSeenNewBundle", "Function TribesGame.TrUser.SeenNewBundle")); }
			ScriptFunction SeenNewItemsClass() { mixin(MGF("mSeenNewItemsClass", "Function TribesGame.TrUser.SeenNewItemsClass")); }
			ScriptFunction SeenNewItemsType() { mixin(MGF("mSeenNewItemsType", "Function TribesGame.TrUser.SeenNewItemsType")); }
			ScriptFunction NeedsToSeeNewBundle() { mixin(MGF("mNeedsToSeeNewBundle", "Function TribesGame.TrUser.NeedsToSeeNewBundle")); }
			ScriptFunction SetFavoriteServer() { mixin(MGF("mSetFavoriteServer", "Function TribesGame.TrUser.SetFavoriteServer")); }
		}
	}
	struct NewItem
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.TrUser.NewItem")); }
		@property final auto ref
		{
			int ItemId() { mixin(MGPS("int", 8)); }
			int Type() { mixin(MGPS("int", 4)); }
			int ClassId() { mixin(MGPS("int", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			int m_ClassId() { mixin(MGPC("int", 76)); }
			ScriptString CurrencyName() { mixin(MGPC("ScriptString", 64)); }
			ScriptString m_Username() { mixin(MGPC("ScriptString", 96)); }
			ScriptString m_Password() { mixin(MGPC("ScriptString", 108)); }
			ScriptArray!(TrUser.NewItem) NewItems() { mixin(MGPC("ScriptArray!(TrUser.NewItem)", 120)); }
			ScriptArray!(TrUser.NewItem) NewBundles() { mixin(MGPC("ScriptArray!(TrUser.NewItem)", 132)); }
			ScriptArray!(TrUser.NewItem) SeenNewItems() { mixin(MGPC("ScriptArray!(TrUser.NewItem)", 144)); }
			ScriptArray!(int) FavServers() { mixin(MGPC("ScriptArray!(int)", 156)); }
			GFxTrMenuMoviePlayer MainMenu() { mixin(MGPC("GFxTrMenuMoviePlayer", 168)); }
			ScriptString m_GameType() { mixin(MGPC("ScriptString", 84)); }
			int CurrencyCode() { mixin(MGPC("int", 60)); }
		}
		bool m_DidLogin() { mixin(MGBPC(80, 0x1)); }
		bool m_DidLogin(bool val) { mixin(MSBPC(80, 0x1)); }
		bool m_SeenNewItemsMain() { mixin(MGBPC(80, 0x20)); }
		bool m_SeenNewItemsMain(bool val) { mixin(MSBPC(80, 0x20)); }
		bool m_ChoseRegion() { mixin(MGBPC(80, 0x2)); }
		bool m_ChoseRegion(bool val) { mixin(MSBPC(80, 0x2)); }
		bool m_ChoseRegion2() { mixin(MGBPC(80, 0x4)); }
		bool m_ChoseRegion2(bool val) { mixin(MSBPC(80, 0x4)); }
		bool m_SeenNewBundlesMain() { mixin(MGBPC(80, 0x40)); }
		bool m_SeenNewBundlesMain(bool val) { mixin(MSBPC(80, 0x40)); }
		bool m_SeenNewGametype() { mixin(MGBPC(80, 0x10)); }
		bool m_SeenNewGametype(bool val) { mixin(MSBPC(80, 0x10)); }
		bool m_SeenClanTags() { mixin(MGBPC(80, 0x8)); }
		bool m_SeenClanTags(bool val) { mixin(MSBPC(80, 0x8)); }
	}
final:
	bool NeedsToSeeNewItemsClass(int ClassId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(Functions.NeedsToSeeNewItemsClass, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool NeedsToSeeNewItemsType(int ClassId, int Type)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.NeedsToSeeNewItemsType, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool NeedToSeeNewBundle(int* ItemId = null)
	{
		ubyte params[8];
		params[] = 0;
		if (ItemId !is null)
			*cast(int*)params.ptr = *ItemId;
		(cast(ScriptObject)this).ProcessEvent(Functions.NeedToSeeNewBundle, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool NeedsToSeeClanTags()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.NeedsToSeeClanTags, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool NeedToSeeAnyNewItem()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.NeedToSeeAnyNewItem, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsFavoriteServer(int ServerID)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ServerID;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsFavoriteServer, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool NeedsToSeeNewItem(int EquipId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EquipId;
		(cast(ScriptObject)this).ProcessEvent(Functions.NeedsToSeeNewItem, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	ScriptString DecryptPassword()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.DecryptPassword, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	ScriptString EncryptPassword(ScriptString Password)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Password;
		(cast(ScriptObject)this).ProcessEvent(Functions.EncryptPassword, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	void Initialize(GFxTrMenuMoviePlayer Movie)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrMenuMoviePlayer*)params.ptr = Movie;
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, params.ptr, cast(void*)0);
	}
	void SaveCredentials(ScriptString NewUserName, ScriptString NewPassword)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = NewUserName;
		*cast(ScriptString*)&params[12] = NewPassword;
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveCredentials, params.ptr, cast(void*)0);
	}
	void SaveClassId(int NewClassId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewClassId;
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveClassId, params.ptr, cast(void*)0);
	}
	void SaveGameType(ScriptString NewGameType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = NewGameType;
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveGameType, params.ptr, cast(void*)0);
	}
	void SaveDidLogin()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveDidLogin, cast(void*)0, cast(void*)0);
	}
	void SaveChoseRegion()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveChoseRegion, cast(void*)0, cast(void*)0);
	}
	void SeenNewGametype()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SeenNewGametype, cast(void*)0, cast(void*)0);
	}
	void SeenNewItemsMain()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SeenNewItemsMain, cast(void*)0, cast(void*)0);
	}
	void SeenNewBundlesMain()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SeenNewBundlesMain, cast(void*)0, cast(void*)0);
	}
	void SeenClanTags()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SeenClanTags, cast(void*)0, cast(void*)0);
	}
	void SeenNewBundle(int ItemId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ItemId;
		(cast(ScriptObject)this).ProcessEvent(Functions.SeenNewBundle, params.ptr, cast(void*)0);
	}
	void SeenNewItemsClass(int ClassId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(Functions.SeenNewItemsClass, params.ptr, cast(void*)0);
	}
	void SeenNewItemsType(int ClassId, int Type)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.SeenNewItemsType, params.ptr, cast(void*)0);
	}
	bool NeedsToSeeNewBundle(int ItemId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ItemId;
		(cast(ScriptObject)this).ProcessEvent(Functions.NeedsToSeeNewBundle, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SetFavoriteServer(int ServerID)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ServerID;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFavoriteServer, params.ptr, cast(void*)0);
	}
}
