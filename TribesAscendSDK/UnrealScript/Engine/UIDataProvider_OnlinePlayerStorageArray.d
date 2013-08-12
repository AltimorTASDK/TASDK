module UnrealScript.Engine.UIDataProvider_OnlinePlayerStorageArray;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataProvider;
import UnrealScript.Engine.OnlinePlayerStorage;

extern(C++) interface UIDataProvider_OnlinePlayerStorageArray : UIDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIDataProvider_OnlinePlayerStorageArray")); }
	private static __gshared UIDataProvider_OnlinePlayerStorageArray mDefaultProperties;
	@property final static UIDataProvider_OnlinePlayerStorageArray DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UIDataProvider_OnlinePlayerStorageArray)("UIDataProvider_OnlinePlayerStorageArray Engine.Default__UIDataProvider_OnlinePlayerStorageArray")); }
	@property final auto ref
	{
		ScriptArray!(ScriptName) Values() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 124); }
		ScriptString ColumnHeaderText() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
		ScriptName PlayerStorageName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 104); }
		int PlayerStorageId() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
		OnlinePlayerStorage PlayerStorage() { return *cast(OnlinePlayerStorage*)(cast(size_t)cast(void*)this + 96); }
		UObject.Pointer VfTable_IUIListElementCellProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 92); }
		UObject.Pointer VfTable_IUIListElementProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 88); }
	}
}
