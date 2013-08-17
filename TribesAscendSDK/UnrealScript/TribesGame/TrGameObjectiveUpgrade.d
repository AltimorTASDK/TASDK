module UnrealScript.TribesGame.TrGameObjectiveUpgrade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrGameObjective;

extern(C++) interface TrGameObjectiveUpgrade : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrGameObjectiveUpgrade")()); }
	private static __gshared TrGameObjectiveUpgrade mDefaultProperties;
	@property final static TrGameObjectiveUpgrade DefaultProperties() { mixin(MGDPC!(TrGameObjectiveUpgrade, "TrGameObjectiveUpgrade TribesGame.Default__TrGameObjectiveUpgrade")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitUpgrade;
		public @property static final ScriptFunction InitUpgrade() { mixin(MGF!("mInitUpgrade", "Function TribesGame.TrGameObjectiveUpgrade.InitUpgrade")()); }
	}
	@property final auto ref
	{
		float m_fNewValue() { mixin(MGPC!("float", 68)()); }
		ScriptName m_nmClassPropertyName() { mixin(MGPC!("ScriptName", 60)()); }
		TrGameObjective m_Owner() { mixin(MGPC!("TrGameObjective", 76)()); }
		UObject.Pointer m_ClassPropertyPointer() { mixin(MGPC!("UObject.Pointer", 72)()); }
	}
	final void InitUpgrade(TrGameObjective OwnerObject)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameObjective*)params.ptr = OwnerObject;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitUpgrade, params.ptr, cast(void*)0);
	}
}
