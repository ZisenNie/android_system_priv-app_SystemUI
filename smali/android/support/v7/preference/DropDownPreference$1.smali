.class Landroid/support/v7/preference/DropDownPreference$1;
.super Ljava/lang/Object;
.source "DropDownPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/DropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/preference/DropDownPreference;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/DropDownPreference;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/v7/preference/DropDownPreference;

    .prologue
    .line 133
    iput-object p1, p0, Landroid/support/v7/preference/DropDownPreference$1;->this$0:Landroid/support/v7/preference/DropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-ltz p3, :cond_27

    .line 137
    iget-object v1, p0, Landroid/support/v7/preference/DropDownPreference$1;->this$0:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/DropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/v7/preference/DropDownPreference$1;->this$0:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, p0, Landroid/support/v7/preference/DropDownPreference$1;->this$0:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/DropDownPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 139
    iget-object v1, p0, Landroid/support/v7/preference/DropDownPreference$1;->this$0:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 135
    .end local v0    # "value":Ljava/lang/String;
    :cond_27
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
