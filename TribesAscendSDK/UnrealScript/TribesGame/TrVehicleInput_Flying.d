module UnrealScript.TribesGame.TrVehicleInput_Flying;

import ScriptClasses;
import UnrealScript.Engine.PlayerInput;

extern(C++) interface TrVehicleInput_Flying : PlayerInput
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicleInput_Flying")); }
	private static __gshared TrVehicleInput_Flying mDefaultProperties;
	@property final static TrVehicleInput_Flying DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVehicleInput_Flying)("TrVehicleInput_Flying TribesGame.Default__TrVehicleInput_Flying")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mAdjustMouseSensitivity;
		public @property static final ScriptFunction AdjustMouseSensitivity() { return mAdjustMouseSensitivity ? mAdjustMouseSensitivity : (mAdjustMouseSensitivity = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleInput_Flying.AdjustMouseSensitivity")); }
	}
	final void AdjustMouseSensitivity(float FOVScale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = FOVScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustMouseSensitivity, params.ptr, cast(void*)0);
	}
}
