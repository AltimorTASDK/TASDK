module UnrealScript.Engine.UIDataStore_Registry;

import ScriptClasses;
import UnrealScript.Engine.UIDynamicFieldProvider;
import UnrealScript.Engine.UIDataStore;

extern(C++) interface UIDataStore_Registry : UIDataStore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIDataStore_Registry")); }
	private static __gshared UIDataStore_Registry mDefaultProperties;
	@property final static UIDataStore_Registry DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UIDataStore_Registry)("UIDataStore_Registry Engine.Default__UIDataStore_Registry")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetDataProvider;
		public @property static final ScriptFunction GetDataProvider() { return mGetDataProvider ? mGetDataProvider : (mGetDataProvider = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_Registry.GetDataProvider")); }
	}
	@property final auto ref UIDynamicFieldProvider RegistryDataProvider() { return *cast(UIDynamicFieldProvider*)(cast(size_t)cast(void*)this + 120); }
	final UIDynamicFieldProvider GetDataProvider()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDataProvider, params.ptr, cast(void*)0);
		return *cast(UIDynamicFieldProvider*)params.ptr;
	}
}
