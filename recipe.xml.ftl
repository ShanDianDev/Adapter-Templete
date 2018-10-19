<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />
    <#if useSupport><dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/></#if>
    <merge from="root/res/values/strings.xml" to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <#if includeLayout>
        <instantiate from="root/res/layout/adapter_item.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(adapterLayoutName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(adapterLayoutName)}.xml" />
    </#if>

    <instantiate from="root/src/app_package/BlankAdapter.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}.${ktOrJavaExt}" />

    <open file="${escapeXmlAttribute(srcOut)}/${className}.${ktOrJavaExt}" />
</recipe>
