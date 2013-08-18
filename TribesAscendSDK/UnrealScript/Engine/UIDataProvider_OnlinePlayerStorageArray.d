module UnrealScript.Engine.UIDataProvider_OnlinePlayerStorageArray;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataProvider;
import UnrealScript.Engine.OnlinePlayerStorage;

extern(C++) interface UIDataProvider_OnlinePlayerStorageArray : UIDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.UIDataProvider_OnlinePlayerStorageArray")); }
	private static __gshared UIDataProvider_OnlinePlayerStorageArray mDefaultProperties;
	@property final static UIDataProvider_OnlinePlayerStorageArray DefaultProperties() { mixin(MGDPC("UIDataProvider_OnlinePlayerStorageArray", "UIDataProvider_OnlinePlayerStorageArray Engine.Default__UIDataProvider_OnlinePlayerStorageArray")); }
	@property final auto ref
	{
		ScriptArray!(ScriptName) Values() { mixin(MGPC("ScriptArray!(ScriptName)", 124)); }
		ScriptString ColumnHeaderText() { mixin(MGPC("ScriptString", 112)); }
		ScriptName PlayerStorageName() { mixin(MGPC("ScriptName", 104)); }
		int PlayerStorageId() { mixin(MGPC("int", 100)); }
		OnlinePlayerStorage PlayerStorage() { mixin(MGPC("OnlinePlayerStorage", 96)); }
		Pointer VfTable_IUIListElementCellProvider() { mixin(MGPC("Pointer", 92)); }
		Pointer VfTable_IUIListElementProvider() { mixin(MGPC("Pointer", 88)); }
	}
}
