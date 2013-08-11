module UnrealScript.Engine.UIDataProvider_OnlinePlayerStorageArray;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataProvider;
import UnrealScript.Engine.OnlinePlayerStorage;

extern(C++) interface UIDataProvider_OnlinePlayerStorageArray : UIDataProvider
{
	public @property final auto ref ScriptArray!(ScriptName) Values() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref ScriptString ColumnHeaderText() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref ScriptName PlayerStorageName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref int PlayerStorageId() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref OnlinePlayerStorage PlayerStorage() { return *cast(OnlinePlayerStorage*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref UObject.Pointer VfTable_IUIListElementCellProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref UObject.Pointer VfTable_IUIListElementProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 88); }
}
