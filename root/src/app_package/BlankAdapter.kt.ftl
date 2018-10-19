package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.support.v7.widget.RecyclerView;
<#if !includeLayout>import android.widget.TextView</#if>
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>

/**
 * A simple {@link RecyclerView.Adapter} subclass.
 *
 */
class ${className} : RecyclerView.Adapter<${className}.${className}VH>() {
    override fun onCreateViewHolder(parent: ViewGroup, p: Int): ${className}VH {
        return ${className}VH(LayoutInflater.from(parent.context).inflate(R.layout.${adapterLayoutName},parent,false))
    }

    override fun getItemCount(): Int {
        return 0
    }

    override fun onBindViewHolder(p0: ${className}VH, p1: Int) {

    }

    class ${className}VH(item: View) : RecyclerView.ViewHolder(item) {

    }
}
