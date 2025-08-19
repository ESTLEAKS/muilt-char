local cam = nil

function CreateSelectionCamera()
    if not cam then
        cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
        SetCamCoord(cam, -1044.85, -2749.89, 21.36)
        PointCamAtCoord(cam, -1044.85, -2749.89, 20.36)
        SetCamFov(cam, 50.0)
        RenderScriptCams(true, false, 0, true, true)
    end
end

function DestroySelectionCamera()
    if cam then
        RenderScriptCams(false, false, 0, true, true)
        DestroyCam(cam, false)
        cam = nil
    end
end
