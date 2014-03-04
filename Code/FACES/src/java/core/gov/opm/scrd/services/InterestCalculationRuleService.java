/*
    Copyright 2014 OPM.gov

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

package gov.opm.scrd.services;

import gov.opm.scrd.entities.application.InterestCalculationRequest;
import gov.opm.scrd.entities.application.InterestCalculationResponse;

/**
 * <p>
 * InterestCalculationRuleService provides methods to execute rules to calculate
 * interest.
 * </p>
 *
 * <p>
 * <b> Thread Safety: </b> Implementations must be effectively thread safe.
 * Refer to ADS 1.3.4 for general assumptions and notes on thread safety.
 * </p>
 *
 * @author albertwang, TCSASSEMBLER
 * @version 1.0
 * @since OPM Rules Engine Models Exceptions and Interest Calculation v1.0 Assembly
 */
public interface InterestCalculationRuleService
    extends RuleService<InterestCalculationRequest, InterestCalculationResponse> {

}

