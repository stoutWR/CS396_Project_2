@ECHO OFF
SET DXC="F:\Unreal\UE_5.4\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "F:\Unreal\UE_5.4\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% -HV 2018 -Zpr -O3 -auto-binding-space 0 -Wno-parentheses-equality -disable-lifetime-markers -T ps_6_6 -E MainPS -Fc PostProcessMaterialShaders.d3dasm -Fo PostProcessMaterialShaders.dxil PostProcessMaterialShaders.usf
:END
PAUSE
