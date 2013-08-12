module UnrealScript.UDKBase.UDKUIDataProvider_SimpleElementProvider;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UDKUIDataProvider_SimpleElementProvider : UIDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKUIDataProvider_SimpleElementProvider")); }
	private static __gshared UDKUIDataProvider_SimpleElementProvider mDefaultProperties;
	@property final static UDKUIDataProvider_SimpleElementProvider DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKUIDataProvider_SimpleElementProvider)("UDKUIDataProvider_SimpleElementProvider UDKBase.Default__UDKUIDataProvider_SimpleElementProvider")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetElementCount;
		public @property static final ScriptFunction GetElementCount() { return mGetElementCount ? mGetElementCount : (mGetElementCount = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataProvider_SimpleElementProvider.GetElementCount")); }
	}
	@property final auto ref UObject.Pointer VfTable_IUIListElementCellProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 88); }
	final int GetElementCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetElementCount, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
