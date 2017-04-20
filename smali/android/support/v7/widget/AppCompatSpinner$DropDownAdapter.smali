.class Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownAdapter"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/SpinnerAdapter;

.field private mListAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V
    .registers 6
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "dropDownTheme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 605
    instance-of v2, p1, Landroid/widget/ListAdapter;

    if-eqz v2, :cond_e

    move-object v2, p1

    .line 606
    check-cast v2, Landroid/widget/ListAdapter;

    iput-object v2, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 609
    :cond_e
    if-eqz p2, :cond_24

    .line 610
    sget-boolean v2, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_M:Z

    if-eqz v2, :cond_25

    instance-of v2, p1, Landroid/widget/ThemedSpinnerAdapter;

    if-eqz v2, :cond_25

    move-object v1, p1

    .line 612
    check-cast v1, Landroid/widget/ThemedSpinnerAdapter;

    .line 613
    .local v1, "themedAdapter":Landroid/widget/ThemedSpinnerAdapter;
    invoke-interface {v1}, Landroid/widget/ThemedSpinnerAdapter;->getDropDownViewTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    if-eq v2, p2, :cond_24

    .line 614
    invoke-interface {v1, p2}, Landroid/widget/ThemedSpinnerAdapter;->setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V

    .line 602
    .end local v1    # "themedAdapter":Landroid/widget/ThemedSpinnerAdapter;
    :cond_24
    :goto_24
    return-void

    .line 616
    :cond_25
    instance-of v2, p1, Landroid/support/v7/widget/ThemedSpinnerAdapter;

    if-eqz v2, :cond_24

    move-object v0, p1

    .line 617
    check-cast v0, Landroid/support/v7/widget/ThemedSpinnerAdapter;

    .line 618
    .local v0, "themedAdapter":Landroid/support/v7/widget/ThemedSpinnerAdapter;
    invoke-interface {v0}, Landroid/support/v7/widget/ThemedSpinnerAdapter;->getDropDownViewTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    if-nez v2, :cond_24

    .line 619
    invoke-interface {v0, p2}, Landroid/support/v7/widget/ThemedSpinnerAdapter;->setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V

    goto :goto_24
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 3

    .prologue
    .line 667
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 668
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_9

    .line 669
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    return v1

    .line 671
    :cond_9
    const/4 v1, 0x1

    return v1
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 626
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    goto :goto_5
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v0, 0x0

    .line 642
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    .line 643
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_5
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 630
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 634
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_6
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 689
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 638
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 693
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 647
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 697
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isEnabled(I)Z
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 680
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 681
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_9

    .line 682
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    return v1

    .line 684
    :cond_9
    const/4 v1, 0x1

    return v1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 651
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_9

    .line 652
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 650
    :cond_9
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 657
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_9

    .line 658
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 656
    :cond_9
    return-void
.end method