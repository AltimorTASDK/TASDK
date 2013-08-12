module UnrealScript.TribesGame.TrStealthResidue;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Actor;

extern(C++) interface TrStealthResidue : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrStealthResidue")); }
	private static __gshared TrStealthResidue mDefaultProperties;
	@property final static TrStealthResidue DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrStealthResidue)("TrStealthResidue TribesGame.Default__TrStealthResidue")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPreBeginPlay;
		public @property static final ScriptFunction PreBeginPlay() { return mPreBeginPlay ? mPreBeginPlay : (mPreBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStealthResidue.PreBeginPlay")); }
	}
	@property final auto ref MaterialInstanceConstant m_MeshMaterial() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 480); }
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
}
