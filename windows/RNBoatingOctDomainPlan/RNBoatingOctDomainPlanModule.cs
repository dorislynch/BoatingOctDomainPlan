using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Boating.Oct.Domain.Plan.RNBoatingOctDomainPlan
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNBoatingOctDomainPlanModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNBoatingOctDomainPlanModule"/>.
        /// </summary>
        internal RNBoatingOctDomainPlanModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNBoatingOctDomainPlan";
            }
        }
    }
}
