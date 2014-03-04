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

package gov.opm.scrd.entities.application;

import gov.opm.scrd.entities.common.IdentifiableEntity;

import java.math.BigDecimal;
import java.util.Date;

/**
 * <p>
 * Represents the entity specifying payment move transaction.
 * </p>
 *
 * <p>
 * <strong>Thread Safety: </strong> This class is mutable and not thread safe.
 * </p>
 *
 * @author faeton, sparemax
 * @version 1.0
 * @since OPM - Data Migration - Entities Update Module Assembly 1.0
 */
public class PaymentMoveTransaction extends IdentifiableEntity {
    /**
     * <p>
     * Represents the transaction key of transaction. It is managed with a getter and setter. It may have any value. It
     * is fully mutable.
     * </p>
     */
    private Long payTransactionKey;
    /**
     * <p>
     * Represents the claim number of transaction. It is managed with a getter and setter. It may have any value. It is
     * fully mutable.
     * </p>
     */
    private String claimNumber;
    /**
     * <p>
     * Represents the tot payd amount of transaction. It is managed with a getter and setter. It may have any value.
     * It is fully mutable.
     * </p>
     */
    private BigDecimal totPayd;
    /**
     * <p>
     * Represents the tot payr amount of transaction. It is managed with a getter and setter. It may have any value.
     * It is fully mutable.
     * </p>
     */
    private BigDecimal totPayr;
    /**
     * <p>
     * Represents the tot payn amount of transaction. It is managed with a getter and setter. It may have any value.
     * It is fully mutable.
     * </p>
     */
    private BigDecimal totPayn;
    /**
     * <p>
     * Represents the tot payvr amount of transaction. It is managed with a getter and setter. It may have any value.
     * It is fully mutable.
     * </p>
     */
    private BigDecimal totPayvr;
    /**
     * <p>
     * Represents the tot payfers amount of transaction. It is managed with a getter and setter. It may have any
     * value. It is fully mutable.
     * </p>
     */
    private BigDecimal totPayfers;
    /**
     * <p>
     * Represents the modification date of transaction. It is managed with a getter and setter. It may have any value.
     * It is fully mutable.
     * </p>
     */
    private Date modificationDate;
    /**
     * <p>
     * Represents the approval date of transaction. It is managed with a getter and setter. It may have any value. It is
     * fully mutable.
     * </p>
     */
    private Date approvalDate;
    /**
     * <p>
     * Represents the processed date of transaction. It is managed with a getter and setter. It may have any value. It
     * is fully mutable.
     * </p>
     */
    private Date processedDate;
    /**
     * <p>
     * Represents the key of the technician of transaction. It is managed with a getter and setter. It may have any
     * value. It is fully mutable.
     * </p>
     */
    private Long technicianUserKey;
    /**
     * <p>
     * Represents the key of the manager of transaction. It is managed with a getter and setter. It may have any value.
     * It is fully mutable.
     * </p>
     */
    private Long managerUserKey;
    /**
     * <p>
     * Represents the flag specifying whether transaction is approved. It is managed with a getter and setter. It may
     * have any value. It is fully mutable.
     * </p>
     */
    private Boolean approved;
    /**
     * <p>
     * Represents the flag specifying whether transaction is disapproved. It is managed with a getter and setter. It may
     * have any value. It is fully mutable.
     * </p>
     */
    private Boolean disapproved;
    /**
     * <p>
     * Represents the flag specifying whether transaction is modified. It is managed with a getter and setter. It may
     * have any value. It is fully mutable.
     * </p>
     */
    private Boolean modified;
    /**
     * <p>
     * Represents the note of transaction. It is managed with a getter and setter. It may have any value. It is fully
     * mutable.
     * </p>
     */
    private String note;

    /**
     * Creates an instance of PaymentMoveTransaction.
     */
    public PaymentMoveTransaction() {
        // Empty
    }

    /**
     * Gets the transaction key of transaction.
     *
     * @return the transaction key of transaction.
     */
    public Long getPayTransactionKey() {
        return payTransactionKey;
    }

    /**
     * Sets the transaction key of transaction.
     *
     * @param payTransactionKey
     *            the transaction key of transaction.
     */
    public void setPayTransactionKey(Long payTransactionKey) {
        this.payTransactionKey = payTransactionKey;
    }

    /**
     * Gets the claim number of transaction.
     *
     * @return the claim number of transaction.
     */
    public String getClaimNumber() {
        return claimNumber;
    }

    /**
     * Sets the claim number of transaction.
     *
     * @param claimNumber
     *            the claim number of transaction.
     */
    public void setClaimNumber(String claimNumber) {
        this.claimNumber = claimNumber;
    }

    /**
     * Gets the tot payd amount of transaction.
     *
     * @return the tot payd amount of transaction.
     */
    public BigDecimal getTotPayd() {
        return totPayd;
    }

    /**
     * Sets the tot payd amount of transaction.
     *
     * @param totPayd
     *            the tot payd amount of transaction.
     */
    public void setTotPayd(BigDecimal totPayd) {
        this.totPayd = totPayd;
    }

    /**
     * Gets the tot payr amount of transaction.
     *
     * @return the tot payr amount of transaction.
     */
    public BigDecimal getTotPayr() {
        return totPayr;
    }

    /**
     * Sets the tot payr amount of transaction.
     *
     * @param totPayr
     *            the tot payr amount of transaction.
     */
    public void setTotPayr(BigDecimal totPayr) {
        this.totPayr = totPayr;
    }

    /**
     * Gets the tot payn amount of transaction.
     *
     * @return the tot payn amount of transaction.
     */
    public BigDecimal getTotPayn() {
        return totPayn;
    }

    /**
     * Sets the tot payn amount of transaction.
     *
     * @param totPayn
     *            the tot payn amount of transaction.
     */
    public void setTotPayn(BigDecimal totPayn) {
        this.totPayn = totPayn;
    }

    /**
     * Gets the tot payvr amount of transaction.
     *
     * @return the tot payvr amount of transaction.
     */
    public BigDecimal getTotPayvr() {
        return totPayvr;
    }

    /**
     * Sets the tot payvr amount of transaction.
     *
     * @param totPayvr
     *            the tot payvr amount of transaction.
     */
    public void setTotPayvr(BigDecimal totPayvr) {
        this.totPayvr = totPayvr;
    }

    /**
     * Gets the tot payfers amount of transaction.
     *
     * @return the tot payfers amount of transaction.
     */
    public BigDecimal getTotPayfers() {
        return totPayfers;
    }

    /**
     * Sets the tot payfers amount of transaction.
     *
     * @param totPayfers
     *            the tot payfers amount of transaction.
     */
    public void setTotPayfers(BigDecimal totPayfers) {
        this.totPayfers = totPayfers;
    }

    /**
     * Gets the modification date of transaction.
     *
     * @return the modification date of transaction.
     */
    public Date getModificationDate() {
        return modificationDate;
    }

    /**
     * Sets the modification date of transaction.
     *
     * @param modificationDate
     *            the modification date of transaction.
     */
    public void setModificationDate(Date modificationDate) {
        this.modificationDate = modificationDate;
    }

    /**
     * Gets the approval date of transaction.
     *
     * @return the approval date of transaction.
     */
    public Date getApprovalDate() {
        return approvalDate;
    }

    /**
     * Sets the approval date of transaction.
     *
     * @param approvalDate
     *            the approval date of transaction.
     */
    public void setApprovalDate(Date approvalDate) {
        this.approvalDate = approvalDate;
    }

    /**
     * Gets the processed date of transaction.
     *
     * @return the processed date of transaction.
     */
    public Date getProcessedDate() {
        return processedDate;
    }

    /**
     * Sets the processed date of transaction.
     *
     * @param processedDate
     *            the processed date of transaction.
     */
    public void setProcessedDate(Date processedDate) {
        this.processedDate = processedDate;
    }

    /**
     * Gets the key of the technician of transaction.
     *
     * @return the key of the technician of transaction.
     */
    public Long getTechnicianUserKey() {
        return technicianUserKey;
    }

    /**
     * Sets the key of the technician of transaction.
     *
     * @param technicianUserKey
     *            the key of the technician of transaction.
     */
    public void setTechnicianUserKey(Long technicianUserKey) {
        this.technicianUserKey = technicianUserKey;
    }

    /**
     * Gets the key of the manager of transaction.
     *
     * @return the key of the manager of transaction.
     */
    public Long getManagerUserKey() {
        return managerUserKey;
    }

    /**
     * Sets the key of the manager of transaction.
     *
     * @param managerUserKey
     *            the key of the manager of transaction.
     */
    public void setManagerUserKey(Long managerUserKey) {
        this.managerUserKey = managerUserKey;
    }

    /**
     * Gets the flag specifying whether transaction is approved.
     *
     * @return the flag specifying whether transaction is approved.
     */
    public Boolean getApproved() {
        return approved;
    }

    /**
     * Sets the flag specifying whether transaction is approved.
     *
     * @param approved
     *            the flag specifying whether transaction is approved.
     */
    public void setApproved(Boolean approved) {
        this.approved = approved;
    }

    /**
     * Gets the flag specifying whether transaction is disapproved.
     *
     * @return the flag specifying whether transaction is disapproved.
     */
    public Boolean getDisapproved() {
        return disapproved;
    }

    /**
     * Sets the flag specifying whether transaction is disapproved.
     *
     * @param disapproved
     *            the flag specifying whether transaction is disapproved.
     */
    public void setDisapproved(Boolean disapproved) {
        this.disapproved = disapproved;
    }

    /**
     * Gets the flag specifying whether transaction is modified.
     *
     * @return the flag specifying whether transaction is modified.
     */
    public Boolean getModified() {
        return modified;
    }

    /**
     * Sets the flag specifying whether transaction is modified.
     *
     * @param modified
     *            the flag specifying whether transaction is modified.
     */
    public void setModified(Boolean modified) {
        this.modified = modified;
    }

    /**
     * Gets the note of transaction.
     *
     * @return the note of transaction.
     */
    public String getNote() {
        return note;
    }

    /**
     * Sets the note of transaction.
     *
     * @param note
     *            the note of transaction.
     */
    public void setNote(String note) {
        this.note = note;
    }
}
