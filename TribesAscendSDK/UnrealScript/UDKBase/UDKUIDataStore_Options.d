module UnrealScript.UDKBase.UDKUIDataStore_Options;

import ScriptClasses;
import UnrealScript.Engine.UIDataStore_GameResource;
import UnrealScript.UDKBase.UDKUIResourceDataProvider;
import UnrealScript.Core.UObject;

extern(C++) interface UDKUIDataStore_Options : UIDataStore_GameResource
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKUIDataStore_Options")); }
	private static __gshared UDKUIDataStore_Options mDefaultProperties;
	@property final static UDKUIDataStore_Options DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKUIDataStore_Options)("UDKUIDataStore_Options UDKBase.Default__UDKUIDataStore_Options")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mClearSet;
			ScriptFunction mAppendToSet;
			ScriptFunction mGetSet;
		}
		public @property static final
		{
			ScriptFunction ClearSet() { return mClearSet ? mClearSet : (mClearSet = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_Options.ClearSet")); }
			ScriptFunction AppendToSet() { return mAppendToSet ? mAppendToSet : (mAppendToSet = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_Options.AppendToSet")); }
			ScriptFunction GetSet() { return mGetSet ? mGetSet : (mGetSet = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_Options.GetSet")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UDKUIResourceDataProvider) DynamicProviders() { return *cast(ScriptArray!(UDKUIResourceDataProvider)*)(cast(size_t)cast(void*)this + 256); }
		UObject.MultiMap_Mirror OptionProviders() { return *cast(UObject.MultiMap_Mirror*)(cast(size_t)cast(void*)this + 196); }
	}
final:
	void ClearSet(ScriptName SetName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SetName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearSet, params.ptr, cast(void*)0);
	}
	void AppendToSet(ScriptName SetName, int NumOptions)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SetName;
		*cast(int*)&params[8] = NumOptions;
		(cast(ScriptObject)this).ProcessEvent(Functions.AppendToSet, params.ptr, cast(void*)0);
	}
	void GetSet(ScriptName SetName, ScriptArray!(UDKUIResourceDataProvider)* OutProviders)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SetName;
		*cast(ScriptArray!(UDKUIResourceDataProvider)*)&params[8] = *OutProviders;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSet, params.ptr, cast(void*)0);
		*OutProviders = *cast(ScriptArray!(UDKUIResourceDataProvider)*)&params[8];
	}
}
