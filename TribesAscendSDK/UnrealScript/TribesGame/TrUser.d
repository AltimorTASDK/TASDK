module UnrealScript.TribesGame.TrUser;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.GFxTrMenuMoviePlayer;

extern(C++) interface TrUser : UObject
{
	struct NewItem
	{
		public @property final auto ref int ItemId() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __ItemId[4];
		public @property final auto ref int Type() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __Type[4];
		public @property final auto ref int ClassId() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __ClassId[4];
	}
	public @property final bool m_DidLogin() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x1) != 0; }
	public @property final bool m_DidLogin(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x1; } return val; }
	public @property final auto ref int m_ClassId() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref ScriptString CurrencyName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 64); }
	public @property final bool m_SeenNewItemsMain() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x20) != 0; }
	public @property final bool m_SeenNewItemsMain(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x20; } return val; }
	public @property final auto ref ScriptString m_Username() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref ScriptString m_Password() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 108); }
	public @property final bool m_ChoseRegion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x2) != 0; }
	public @property final bool m_ChoseRegion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x2; } return val; }
	public @property final bool m_ChoseRegion2() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x4) != 0; }
	public @property final bool m_ChoseRegion2(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x4; } return val; }
	public @property final bool m_SeenNewBundlesMain() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x40) != 0; }
	public @property final bool m_SeenNewBundlesMain(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x40; } return val; }
	public @property final auto ref ScriptArray!(TrUser.NewItem) NewItems() { return *cast(ScriptArray!(TrUser.NewItem)*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref ScriptArray!(TrUser.NewItem) NewBundles() { return *cast(ScriptArray!(TrUser.NewItem)*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref ScriptArray!(TrUser.NewItem) SeenNewItems() { return *cast(ScriptArray!(TrUser.NewItem)*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref ScriptArray!(int) FavServers() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref GFxTrMenuMoviePlayer MainMenu() { return *cast(GFxTrMenuMoviePlayer*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref ScriptString m_GameType() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 84); }
	public @property final bool m_SeenNewGametype() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x10) != 0; }
	public @property final bool m_SeenNewGametype(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x10; } return val; }
	public @property final bool m_SeenClanTags() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x8) != 0; }
	public @property final bool m_SeenClanTags(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x8; } return val; }
	public @property final auto ref int CurrencyCode() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
	final bool NeedsToSeeNewItemsClass(int ClassId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56835], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool NeedsToSeeNewItemsType(int ClassId, int Type)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56851], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool NeedToSeeNewBundle(int ItemId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ItemId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57849], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool NeedsToSeeClanTags()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58115], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool NeedToSeeAnyNewItem()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58259], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool IsFavoriteServer(int ServerID)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ServerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58555], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool NeedsToSeeNewItem(int EquipId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EquipId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58652], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final ScriptString DecryptPassword()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59483], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final ScriptString EncryptPassword(ScriptString Password)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Password;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113426], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	final void Initialize(GFxTrMenuMoviePlayer Movie)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrMenuMoviePlayer*)params.ptr = Movie;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113429], params.ptr, cast(void*)0);
	}
	final void SaveCredentials(ScriptString NewUserName, ScriptString NewPassword)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = NewUserName;
		*cast(ScriptString*)&params[12] = NewPassword;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113431], params.ptr, cast(void*)0);
	}
	final void SaveClassId(int NewClassId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewClassId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113434], params.ptr, cast(void*)0);
	}
	final void SaveGameType(ScriptString NewGameType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = NewGameType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113436], params.ptr, cast(void*)0);
	}
	final void SaveDidLogin()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113438], cast(void*)0, cast(void*)0);
	}
	final void SaveChoseRegion()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113439], cast(void*)0, cast(void*)0);
	}
	final void SeenNewGametype()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113440], cast(void*)0, cast(void*)0);
	}
	final void SeenNewItemsMain()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113441], cast(void*)0, cast(void*)0);
	}
	final void SeenNewBundlesMain()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113442], cast(void*)0, cast(void*)0);
	}
	final void SeenClanTags()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113443], cast(void*)0, cast(void*)0);
	}
	final void SeenNewBundle(int ItemId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ItemId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113444], params.ptr, cast(void*)0);
	}
	final void SeenNewItemsClass(int ClassId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113447], params.ptr, cast(void*)0);
	}
	final void SeenNewItemsType(int ClassId, int Type)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113450], params.ptr, cast(void*)0);
	}
	final bool NeedsToSeeNewBundle(int ItemId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ItemId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113461], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void SetFavoriteServer(int ServerID)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ServerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113472], params.ptr, cast(void*)0);
	}
}
