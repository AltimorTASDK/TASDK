module UnrealScript.Engine.UIDataStore_Registry;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIDynamicFieldProvider;
import UnrealScript.Engine.UIDataStore;

extern(C++) interface UIDataStore_Registry : UIDataStore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIDataStore_Registry")()); }
	private static __gshared UIDataStore_Registry mDefaultProperties;
	@property final static UIDataStore_Registry DefaultProperties() { mixin(MGDPC!(UIDataStore_Registry, "UIDataStore_Registry Engine.Default__UIDataStore_Registry")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetDataProvider;
		public @property static final ScriptFunction GetDataProvider() { mixin(MGF!("mGetDataProvider", "Function Engine.UIDataStore_Registry.GetDataProvider")()); }
	}
	@property final auto ref UIDynamicFieldProvider RegistryDataProvider() { mixin(MGPC!("UIDynamicFieldProvider", 120)()); }
	final UIDynamicFieldProvider GetDataProvider()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDataProvider, params.ptr, cast(void*)0);
		return *cast(UIDynamicFieldProvider*)params.ptr;
	}
}
