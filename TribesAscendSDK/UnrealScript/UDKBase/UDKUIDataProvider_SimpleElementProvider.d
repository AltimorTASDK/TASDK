module UnrealScript.UDKBase.UDKUIDataProvider_SimpleElementProvider;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UDKUIDataProvider_SimpleElementProvider : UIDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKUIDataProvider_SimpleElementProvider")); }
	private static __gshared UDKUIDataProvider_SimpleElementProvider mDefaultProperties;
	@property final static UDKUIDataProvider_SimpleElementProvider DefaultProperties() { mixin(MGDPC("UDKUIDataProvider_SimpleElementProvider", "UDKUIDataProvider_SimpleElementProvider UDKBase.Default__UDKUIDataProvider_SimpleElementProvider")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetElementCount;
		public @property static final ScriptFunction GetElementCount() { mixin(MGF("mGetElementCount", "Function UDKBase.UDKUIDataProvider_SimpleElementProvider.GetElementCount")); }
	}
	@property final auto ref Pointer VfTable_IUIListElementCellProvider() { mixin(MGPC("Pointer", 88)); }
	final int GetElementCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetElementCount, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
