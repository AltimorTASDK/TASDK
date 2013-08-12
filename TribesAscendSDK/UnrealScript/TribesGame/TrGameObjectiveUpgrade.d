module UnrealScript.TribesGame.TrGameObjectiveUpgrade;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrGameObjective;

extern(C++) interface TrGameObjectiveUpgrade : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameObjectiveUpgrade")); }
	private static __gshared TrGameObjectiveUpgrade mDefaultProperties;
	@property final static TrGameObjectiveUpgrade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrGameObjectiveUpgrade)("TrGameObjectiveUpgrade TribesGame.Default__TrGameObjectiveUpgrade")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitUpgrade;
		public @property static final ScriptFunction InitUpgrade() { return mInitUpgrade ? mInitUpgrade : (mInitUpgrade = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjectiveUpgrade.InitUpgrade")); }
	}
	@property final auto ref
	{
		float m_fNewValue() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
		ScriptName m_nmClassPropertyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 60); }
		TrGameObjective m_Owner() { return *cast(TrGameObjective*)(cast(size_t)cast(void*)this + 76); }
		UObject.Pointer m_ClassPropertyPointer() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 72); }
	}
	final void InitUpgrade(TrGameObjective OwnerObject)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameObjective*)params.ptr = OwnerObject;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitUpgrade, params.ptr, cast(void*)0);
	}
}
