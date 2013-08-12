module UnrealScript.Engine.UICharacterSummary;

import ScriptClasses;
import UnrealScript.Engine.UIResourceDataProvider;

extern(C++) interface UICharacterSummary : UIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UICharacterSummary")); }
	private static __gshared UICharacterSummary mDefaultProperties;
	@property final static UICharacterSummary DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UICharacterSummary)("UICharacterSummary Engine.Default__UICharacterSummary")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mIsProviderDisabled;
		public @property static final ScriptFunction IsProviderDisabled() { return mIsProviderDisabled ? mIsProviderDisabled : (mIsProviderDisabled = ScriptObject.Find!(ScriptFunction)("Function Engine.UICharacterSummary.IsProviderDisabled")); }
	}
	@property final
	{
		auto ref
		{
			ScriptString CharacterBio() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 148); }
			ScriptString CharacterName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
			ScriptString ClassPathName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
		}
		bool bIsDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x1) != 0; }
		bool bIsDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x1; } return val; }
	}
	final bool IsProviderDisabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsProviderDisabled, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
