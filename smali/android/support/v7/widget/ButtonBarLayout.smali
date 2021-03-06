.class public Landroid/support/v7/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 51
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v2

    .line 52
    const/16 v3, 0x140

    .line 51
    if-lt v2, v3, :cond_25

    const/4 v0, 0x1

    .line 53
    .local v0, "allowStackingDefault":Z
    :goto_13
    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 54
    .local v1, "ta":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout_allowStacking:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 56
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    return-void

    .line 51
    .end local v0    # "allowStackingDefault":Z
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :cond_25
    const/4 v0, 0x0

    .restart local v0    # "allowStackingDefault":Z
    goto :goto_13
.end method

.method private isStacked()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 137
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private setStacked(Z)V
    .registers 6
    .param p1, "stacked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 122
    if-eqz p1, :cond_4

    const/4 v3, 0x1

    :cond_4
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->setOrientation(I)V

    .line 123
    if-eqz p1, :cond_2e

    const/4 v3, 0x5

    :goto_a
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->setGravity(I)V

    .line 124
    sget v3, Landroid/support/v7/appcompat/R$id;->spacer:I

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 125
    .local v2, "spacer":Landroid/view/View;
    if-eqz v2, :cond_1c

    .line 126
    if-eqz p1, :cond_31

    const/16 v3, 0x8

    :goto_19
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 130
    :cond_1c
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v0

    .line 131
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x2

    .local v1, "i":I
    :goto_22
    if-ltz v1, :cond_33

    .line 132
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 131
    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    .line 123
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "spacer":Landroid/view/View;
    :cond_2e
    const/16 v3, 0x50

    goto :goto_a

    .line 126
    .restart local v2    # "spacer":Landroid/view/View;
    :cond_31
    const/4 v3, 0x4

    goto :goto_19

    .line 121
    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    :cond_33
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 71
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 72
    .local v8, "widthSize":I
    iget-boolean v9, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v9, :cond_18

    .line 73
    iget v9, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    if-le v8, v9, :cond_16

    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 75
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 77
    :cond_16
    iput v8, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 79
    :cond_18
    const/4 v6, 0x0

    .line 84
    .local v6, "needsRemeasure":Z
    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v9

    if-nez v9, :cond_41

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    if-ne v9, v10, :cond_41

    .line 85
    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 87
    .local v3, "initialWidthMeasureSpec":I
    const/4 v6, 0x1

    .line 91
    :goto_2e
    invoke-super {p0, v3, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 92
    iget-boolean v9, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v9, :cond_3b

    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v9

    if-eqz v9, :cond_43

    .line 116
    :cond_3b
    :goto_3b
    if-eqz v6, :cond_40

    .line 117
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 70
    :cond_40
    return-void

    .line 89
    .end local v3    # "initialWidthMeasureSpec":I
    :cond_41
    move v3, p1

    .restart local v3    # "initialWidthMeasureSpec":I
    goto :goto_2e

    .line 95
    :cond_43
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-lt v9, v10, :cond_60

    .line 97
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result v4

    .line 98
    .local v4, "measuredWidth":I
    const/high16 v9, -0x1000000

    and-int v5, v4, v9

    .line 99
    .local v5, "measuredWidthState":I
    const/high16 v9, 0x1000000

    if-ne v5, v9, :cond_5e

    const/4 v7, 0x1

    .line 110
    .end local v4    # "measuredWidth":I
    .end local v5    # "measuredWidthState":I
    .local v7, "stack":Z
    :goto_56
    if-eqz v7, :cond_3b

    .line 111
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 113
    const/4 v6, 0x1

    goto :goto_3b

    .line 99
    .end local v7    # "stack":Z
    .restart local v4    # "measuredWidth":I
    .restart local v5    # "measuredWidthState":I
    :cond_5e
    const/4 v7, 0x0

    .restart local v7    # "stack":Z
    goto :goto_56

    .line 103
    .end local v4    # "measuredWidth":I
    .end local v5    # "measuredWidthState":I
    .end local v7    # "stack":Z
    :cond_60
    const/4 v0, 0x0

    .line 104
    .local v0, "childWidthTotal":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_66
    if-ge v2, v1, :cond_74

    .line 105
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v0, v9

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    .line 107
    :cond_74
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingLeft()I

    move-result v9

    add-int/2addr v9, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    if-le v9, v8, :cond_82

    const/4 v7, 0x1

    .restart local v7    # "stack":Z
    goto :goto_56

    .end local v7    # "stack":Z
    :cond_82
    const/4 v7, 0x0

    .restart local v7    # "stack":Z
    goto :goto_56
.end method
