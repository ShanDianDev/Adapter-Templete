package ${packageName};

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.support.v7.widget.RecyclerView;
<#if !includeLayout>import android.widget.TextView;</#if>
<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>

/**
 * A simple {@link RecyclerView.Adapter} subclass.
 *
 */
public class ${className} extends RecyclerView.Adapter<${className}.${className}VH> {

    public ${className}() {
        // Required empty public constructor
    }

    @Override
    public ${className}VH onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ${className}VH(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.${adapterLayoutName},viewGroup,false));
    }

    @Override
    public void onBindViewHolder(${className}VH viewHolder, int i) {

    }

    @Override
    public int getItemCount() {
        return 0;
    }

    static class ${className}VH extends RecyclerView.ViewHolder{

        public ${className}VH(View itemView) {
            super(itemView);
        }
    }
}
