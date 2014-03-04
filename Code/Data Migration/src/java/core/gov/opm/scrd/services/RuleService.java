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

import gov.opm.scrd.entities.application.RuleRequest;
import gov.opm.scrd.entities.application.RuleResponse;

/**
 * This is a base interface for rule engine services.
 *
 * @author argolite, j3_guile
 * @version 1.0
 * @param <S> the type of the request supported by the interface
 * @param <T> the type of the response supported by the interface
 */
public interface RuleService<S extends RuleRequest, T extends RuleResponse> {

    /**
     * Executes rules for the given request.
     *
     * @param request the request for rule execution
     * @return the corresponding response to the given rule request
     * @throws IllegalArgumentException if the request is null
     * @throws OPMException for any problems encountered while executing the request
     */
    public T execute(S request) throws OPMException;
}
