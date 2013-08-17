module UnrealScript.TribesGame.TrStealthResidue;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Actor;

extern(C++) interface TrStealthResidue : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrStealthResidue")()); }
	private static __gshared TrStealthResidue mDefaultProperties;
	@property final static TrStealthResidue DefaultProperties() { mixin(MGDPC!(TrStealthResidue, "TrStealthResidue TribesGame.Default__TrStealthResidue")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPreBeginPlay;
		public @property static final ScriptFunction PreBeginPlay() { mixin(MGF!("mPreBeginPlay", "Function TribesGame.TrStealthResidue.PreBeginPlay")()); }
	}
	@property final auto ref
	{
		MaterialInstanceConstant m_MeshMaterial() { mixin(MGPC!(MaterialInstanceConstant, 480)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_Mesh'!
	}
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
}
