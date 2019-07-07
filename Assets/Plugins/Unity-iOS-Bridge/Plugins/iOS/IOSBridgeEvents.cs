using System;
using UnityEngine;

namespace CandyCoded.UnityIOSBridge
{

    public class IOSBridgeEvents : MonoBehaviour
    {

        public Action action;

        public void CallbackOneShot()
        {

            action?.Invoke();

        }

    }

}
