﻿using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightColorOscillator : MonoBehaviour
{
    public Color lightColor1 = Color.blue;
    public Color lightColor2 = Color.red;
    public float speed = 1.0f;
    [Range(0.0f, 1.0f)]
    public float phase = 0.0f;

    void Start()
    {
        var light = GetComponent<Light>();
        if (light == null)
        {
            Debug.LogError("attached a LightColorOscillator to a gameobject without a light");
        }
        else
        {
            _light = light;
        }
    }

    void Update()
    {
        if (_light != null)
        {
            _accumulatedTime += Time.deltaTime * speed;
            var sin = Mathf.Sin(_accumulatedTime) + phase ;
            sin = sin - (float)Math.Truncate(sin);
            _light.color = Color.Lerp(lightColor1, lightColor2, sin);
        }
    }

    float _accumulatedTime = 0.0f;
    Light _light;
}
