.class public Landroid/support/v7/widget/TintTypedArray;
.super Ljava/lang/Object;
.source "TintTypedArray.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mWrapped:Landroid/content/res/TypedArray;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "array"    # Landroid/content/res/TypedArray;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/support/v7/widget/TintTypedArray;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 62
    return-void
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I
    .param p2, "attrs"    # [I

    .prologue
    .line 59
    new-instance v0, Landroid/support/v7/widget/TintTypedArray;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I

    .prologue
    .line 49
    new-instance v0, Landroid/support/v7/widget/TintTypedArray;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 54
    new-instance v0, Landroid/support/v7/widget/TintTypedArray;

    .line 55
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 54
    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method


# virtual methods
.method public getBoolean(IZ)Z
    .registers 4
    .param p1, "index"    # I
    .param p2, "defValue"    # Z

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public getColor(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 128
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    return v0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 6
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 132
    iget-object v2, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 133
    iget-object v2, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v2, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 134
    .local v0, "resourceId":I
    if-eqz v0, :cond_1a

    .line 136
    iget-object v2, p0, Landroid/support/v7/widget/TintTypedArray;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 137
    .local v1, "value":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_1a

    .line 138
    return-object v1

    .line 142
    .end local v0    # "resourceId":I
    .end local v1    # "value":Landroid/content/res/ColorStateList;
    :cond_1a
    iget-object v2, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    return-object v2
.end method

.method public getDimensionPixelOffset(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    return v0
.end method

.method public getDimensionPixelSize(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 158
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    return v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 69
    iget-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 70
    .local v0, "resourceId":I
    if-eqz v0, :cond_18

    .line 71
    iget-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 74
    .end local v0    # "resourceId":I
    :cond_18
    iget-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 79
    iget-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 80
    .local v0, "resourceId":I
    if-eqz v0, :cond_1d

    .line 81
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/TintTypedArray;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 84
    .end local v0    # "resourceId":I
    :cond_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFloat(IF)F
    .registers 4
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .prologue
    .line 124
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    return v0
.end method

.method public getInt(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method public getInteger(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 146
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    return v0
.end method

.method public getLayoutDimension(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    return v0
.end method

.method public getResourceId(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 174
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 104
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 178
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasValue(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 209
    return-void
.end method
