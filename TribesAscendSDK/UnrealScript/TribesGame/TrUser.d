module UnrealScript.TribesGame.TrUser;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.GFxTrMenuMoviePlayer;

extern(C++) interface TrUser : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrUser")); }
	private static __gshared TrUser mDefaultProperties;
	@property final static TrUser DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrUser)("TrUser TribesGame.Default__TrUser")); }
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
			ScriptFunction NeedsToSeeNewItemsClass() { return mNeedsToSeeNewItemsClass ? mNeedsToSeeNewItemsClass : (mNeedsToSeeNewItemsClass = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrUser.NeedsToSeeNewItemsClass")); }
			ScriptFunction NeedsToSeeNewItemsType() { return mNeedsToSeeNewItemsType ? mNeedsToSeeNewItemsType : (mNeedsToSeeNewItemsType = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrUser.NeedsToSeeNewItemsType")); }
			ScriptFunction NeedToSeeNewBundle() { return mNeedToSeeNewBundle ? mNeedToSeeNewBundle : (mNeedToSeeNewBundle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrUser.NeedToSeeNewBundle")); }
			ScriptFunction NeedsToSeeClanTags() { return mNeedsToSeeClanTags ? mNeedsToSeeClanTags : (mNeedsToSeeClanTags = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrUser.NeedsToSeeClanTags")); }
			ScriptFunction NeedToSeeAnyNewItem() { return mNeedToSeeAnyNewItem ? mNeedToSeeAnyNewItem : (mNeedToSeeAnyNewItem = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrUser.NeedToSeeAnyNewItem")); }
			ScriptFunction IsFavoriteServer() { return mIsFavoriteServer ? mIsFavoriteServer : (mIsFavoriteServer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrUser.IsFavoriteServer")); }
			ScriptFunction NeedsToSeeNewItem() { return mNeedsToSeeNewItem ? mNeedsToSeeNewItem : (mNeedsToSeeNewItem = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrUser.NeedsToSeeNewItem")); }
			ScriptFunction DecryptPassword() { return mDecryptPassword ? mDecryptPassword : (mDecryptPassword = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrUser.DecryptPassword")); }
			ScriptFunction EncryptPassword() { return mEncryptPassword ? mEncryptPassword : (mEncryptPassword = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrUser.EncryptPassword")); }
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrUser.Initialize")); }
			ScriptFunction SaveCredentials() { return mSaveCredentials ? mSaveCredentials : (mSaveCredentials = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrUser.SaveCredentials")); }
			ScriptFunction SaveClassId() { return mSaveClassId ? mSaveClassId : (mSaveClassId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrUser.SaveClassId")); }
			ScriptFunction SaveGameType() { return mSaveGameType ? mSaveGameType : (mSaveGameType = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrUser.SaveGameType")); }
			ScriptFunction SaveDidLogin() { return mSaveDidLogin ? mSaveDidLogin : (mSaveDidLogin = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrUser.SaveDidLogin")); }
			ScriptFunction SaveChoseRegion() { return mSaveChoseRegion ? mSaveChoseRegion : (mSaveChoseRegion = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrUser.SaveChoseRegion")); }
			ScriptFunction SeenNewGametype() { return mSeenNewGametype ? mSeenNewGametype : (mSeenNewGametype = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrUser.SeenNewGametype")); }
			ScriptFunction SeenNewItemsMain() { return mSeenNewItemsMain ? mSeenNewItemsMain : (mSeenNewItemsMain = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrUser.SeenNewItemsMain")); }
			ScriptFunction SeenNewBundlesMain() { return mSeenNewBundlesMain ? mSeenNewBundlesMain : (mSeenNewBundlesMain = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrUser.SeenNewBundlesMain")); }
			ScriptFunction SeenClanTags() { return mSeenClanTags ? mSeenClanTags : (mSeenClanTags = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrUser.SeenClanTags")); }
			ScriptFunction SeenNewBundle() { return mSeenNewBundle ? mSeenNewBundle : (mSeenNewBundle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrUser.SeenNewBundle")); }
			ScriptFunction SeenNewItemsClass() { return mSeenNewItemsClass ? mSeenNewItemsClass : (mSeenNewItemsClass = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrUser.SeenNewItemsClass")); }
			ScriptFunction SeenNewItemsType() { return mSeenNewItemsType ? mSeenNewItemsType : (mSeenNewItemsType = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrUser.SeenNewItemsType")); }
			ScriptFunction NeedsToSeeNewBundle() { return mNeedsToSeeNewBundle ? mNeedsToSeeNewBundle : (mNeedsToSeeNewBundle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrUser.NeedsToSeeNewBundle")); }
			ScriptFunction SetFavoriteServer() { return mSetFavoriteServer ? mSetFavoriteServer : (mSetFavoriteServer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrUser.SetFavoriteServer")); }
		}
	}
	struct NewItem
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrUser.NewItem")); }
		@property final auto ref
		{
			int ItemId() { return *cast(int*)(cast(size_t)&this + 8); }
			int Type() { return *cast(int*)(cast(size_t)&this + 4); }
			int ClassId() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			int m_ClassId() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
			ScriptString CurrencyName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 64); }
			ScriptString m_Username() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 96); }
			ScriptString m_Password() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 108); }
			ScriptArray!(TrUser.NewItem) NewItems() { return *cast(ScriptArray!(TrUser.NewItem)*)(cast(size_t)cast(void*)this + 120); }
			ScriptArray!(TrUser.NewItem) NewBundles() { return *cast(ScriptArray!(TrUser.NewItem)*)(cast(size_t)cast(void*)this + 132); }
			ScriptArray!(TrUser.NewItem) SeenNewItems() { return *cast(ScriptArray!(TrUser.NewItem)*)(cast(size_t)cast(void*)this + 144); }
			ScriptArray!(int) FavServers() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 156); }
			GFxTrMenuMoviePlayer MainMenu() { return *cast(GFxTrMenuMoviePlayer*)(cast(size_t)cast(void*)this + 168); }
			ScriptString m_GameType() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 84); }
			int CurrencyCode() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
		}
		bool m_DidLogin() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x1) != 0; }
		bool m_DidLogin(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x1; } return val; }
		bool m_SeenNewItemsMain() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x20) != 0; }
		bool m_SeenNewItemsMain(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x20; } return val; }
		bool m_ChoseRegion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x2) != 0; }
		bool m_ChoseRegion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x2; } return val; }
		bool m_ChoseRegion2() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x4) != 0; }
		bool m_ChoseRegion2(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x4; } return val; }
		bool m_SeenNewBundlesMain() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x40) != 0; }
		bool m_SeenNewBundlesMain(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x40; } return val; }
		bool m_SeenNewGametype() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x10) != 0; }
		bool m_SeenNewGametype(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x10; } return val; }
		bool m_SeenClanTags() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x8) != 0; }
		bool m_SeenClanTags(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x8; } return val; }
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
	bool NeedToSeeNewBundle(int ItemId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ItemId;
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
