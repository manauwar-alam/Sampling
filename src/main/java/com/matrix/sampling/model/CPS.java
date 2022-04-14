package com.matrix.sampling.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

@Entity
@Table(name="cps")

//To increase speed and save sql statement execution time.
@DynamicInsert
@DynamicUpdate
public class CPS {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name="BA")
	private String BA;
	
	@Column(name="SEASON")
	private String season;
	
	@Column(name="ORDER_DATE")
	private String orderDate;
	
	@Column(name="CUSTOMER")
	private String  customer;
	
	@Column(name="SAMPLE_SIZE")
	private String sampleSize;
	
	@Column(name="CLIENT")
	private String client;
	
	@Column(name="SIZE_RANGE")
	private String sizeRange;
	
	@Column(name="COUNTRY")
	private String country;
	
	@Column(name="MAX_ORDER_QUANTITY")
	private Integer maxOrderQuantity;
	
	@Column(name="STYLE_CODE")
	private String styleCode;
	
	@Column(name="SA_NO")
	private String SANumber;
	
	@Column(name="COLOR")
	private String color;
	
	@Column(name="STYLE_NAME")
	private String styleName;
	
	@Column(name="DESCRIPTION")
	private String description;
	
	@Column(name="EMBELLISHMENT")
	private String embellishment;
	
	@Column(name="NOTES_WITH_COMMENTS")
	private String notesWithComments;
	
	@Column(name="PANEL_WEIGHT")
	private Double panelWeight;
	
	@Column(name="MATERIAL_WEIGHT")
	private Double materialWeight;
	
	@Column(name="FABRIC_WEIGHT")
	private Double fabricWeight; 
	
	@Column(name="EMB_AREA")
	private Double embroideryArea;
	
	@Column(name="EMB_COST_PRICE")
	private Double embCostPrice;
	
	@Column(name="MATERIAL_COST_PRICE")
	private Double materialCostPrice;
	
	@Column(name="WAGES_PER_HOUR")
	private Double wagesPerHour;
	
	@Column(name="SKILL_TYPE")
	private String skill;
	
	@Column(name="HOURS_CONSUMED")
	private Double hoursConsumed;
	
	@Column(name="SIZE_GRADING")
	private Double sizeGrading;
	
	@Column(name="MATERIAL_WASTAGE")
	private Double materialWastage;
	
	@Column(name="AREA_UNIT")
	private String areaUnit;
	
	@Column(name="BEADING_COST1")
	private Double beadingCost1;
	
	@Column(name="BEADING_COST2")
	private Double beadingCost2;
	
	@Column(name="TOTAL_EMB_COST")
	private Double totalEmbcost;
	
	@Column(name="TOTAL_MAT_COST")
	private Double totalMatCost;
	

	
	
	
	public Double getTotalEmbcost() {
		return totalEmbcost;
	}
	public void setTotalEmbcost(Double totalEmbcost) {
		this.totalEmbcost = totalEmbcost;
	}
	public Double getTotalMatCost() {
		return totalMatCost;
	}
	public void setTotalMatCost(Double totalMatCost) {
		this.totalMatCost = totalMatCost;
	}
	public Double getBeadingCost1() {
		return beadingCost1;
	}
	public void setBeadingCost1(Double beadingCost1) {
		this.beadingCost1 = beadingCost1;
	}
	public Double getBeadingCost2() {
		return beadingCost2;
	}
	public void setBeadingCost2(Double beadingCost2) {
		this.beadingCost2 = beadingCost2;
	}
	public String getAreaUnit() {
		return areaUnit;
	}
	public void setAreaUnit(String areaUnit) {
		this.areaUnit = areaUnit;
	}
	public Double getSizeGrading() {
		return sizeGrading;
	}
	public void setSizeGrading(Double sizeGrading) {
		this.sizeGrading = sizeGrading;
	}
	public Double getMaterialWastage() {
		return materialWastage;
	}
	public void setMaterialWastage(Double materialWastage) {
		this.materialWastage = materialWastage;
	}
	public Double getPanelWeight() {
		return panelWeight;
	}
	public void setPanelWeight(Double panelWeight) {
		this.panelWeight = panelWeight;
	}
	public Double getMaterialWeight() {
		return materialWeight;
	}
	public void setMaterialWeight(Double materialWeight) {
		this.materialWeight = materialWeight;
	}
	public Double getFabricWeight() {
		return fabricWeight;
	}
	public void setFabricWeight(Double fabricWeight) {
		this.fabricWeight = fabricWeight;
	}
	public Double getHoursConsumed() {
		return hoursConsumed;
	}
	public void setHoursConsumed(Double hoursConsumed) {
		this.hoursConsumed = hoursConsumed;
	}
	public String getSkill() {
		return skill;
	}
	public void setSkill(String skill) {
		this.skill = skill;
	}
	public Double getEmbroideryArea() {
		return embroideryArea;
	}
	public void setEmbroideryArea(Double embroideryArea) {
		this.embroideryArea = embroideryArea;
	}
	public Double getEmbCostPrice() {
		return embCostPrice;
	}
	public void setEmbCostPrice(Double embCostPrice) {
		this.embCostPrice = embCostPrice;
	}
	public Double getMaterialCostPrice() {
		return materialCostPrice;
	}
	public void setMaterialCostPrice(Double materialCostPrice) {
		this.materialCostPrice = materialCostPrice;
	}
	public Double getWagesPerHour() {
		return wagesPerHour;
	}
	public void setWagesPerHour(Double wagesPerHour) {
		this.wagesPerHour = wagesPerHour;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getBA() {
		return BA;
	}
	public void setBA(String bA) {
		BA = bA;
	}
	public String getSeason() {
		return season;
	}
	public void setSeason(String season) {
		this.season = season;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public String getCustomer() {
		return customer;
	}
	public void setCustomer(String customer) {
		this.customer = customer;
	}
	public String getSampleSize() {
		return sampleSize;
	}
	public void setSampleSize(String sampleSize) {
		this.sampleSize = sampleSize;
	}
	public String getClient() {
		return client;
	}
	public void setClient(String client) {
		this.client = client;
	}
	public String getSizeRange() {
		return sizeRange;
	}
	public void setSizeRange(String sizeRange) {
		this.sizeRange = sizeRange;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public Integer getMaxOrderQuantity() {
		return maxOrderQuantity;
	}
	public void setMaxOrderQuantity(Integer maxOrderQuantity) {
		this.maxOrderQuantity = maxOrderQuantity;
	}
	public String getStyleCode() {
		return styleCode;
	}
	public void setStyleCode(String styleCode) {
		this.styleCode = styleCode;
	}
	public String getSANumber() {
		return SANumber;
	}
	public void setSANumber(String sANumber) {
		SANumber = sANumber;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getStyleName() {
		return styleName;
	}
	public void setStyleName(String styleName) {
		this.styleName = styleName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getEmbellishment() {
		return embellishment;
	}
	public void setEmbellishment(String embellishment) {
		this.embellishment = embellishment;
	}
	public String getNotesWithComments() {
		return notesWithComments;
	}
	public void setNotesWithComments(String notesWithComments) {
		this.notesWithComments = notesWithComments;
	}
	@Override
	public String toString() {
		return "CPS [BA=" + BA + ", season=" + season + ", orderDate=" + orderDate + ", customer=" + customer
				+ ", sampleSize=" + sampleSize + ", client=" + client + ", sizeRange=" + sizeRange + ", country="
				+ country + ", maxOrderQuantity=" + maxOrderQuantity + ", styleCode=" + styleCode + ", SANumber="
				+ SANumber + ", color=" + color + ", styleName=" + styleName + ", description=" + description
				+ ", embellishment=" + embellishment + ", notesWithComments=" + notesWithComments + ", panelWeight="
				+ panelWeight + ", materialWeight=" + materialWeight + ", fabricWeight=" + fabricWeight
				+ ", embroideryArea=" + embroideryArea + ", embCostPrice=" + embCostPrice + ", materialCostPrice="
				+ materialCostPrice + ", wagesPerHour=" + wagesPerHour + ", skill=" + skill + ", hoursConsumed="
				+ hoursConsumed + ", sizeGrading=" + sizeGrading + ", materialWastage=" + materialWastage
				+ ", areaUnit=" + areaUnit + ", beadingCost1=" + beadingCost1 + ", beadingCost2=" + beadingCost2
				+ ", totalEmbcost=" + totalEmbcost + ", totalMatCost=" + totalMatCost + "]";
	}
	

}
