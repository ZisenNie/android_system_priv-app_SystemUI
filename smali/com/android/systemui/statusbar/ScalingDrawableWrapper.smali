.class Lcom/android/systemui/statusbar/ScalingDrawableWrapper;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "ScalingDrawableWrapper.java"


# instance fields
.field private mScaleFactor:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;F)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "scaleFactor"    # F

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 31
    iput p2, p0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->mScaleFactor:F

    .line 29
    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .registers 3

    .prologue
    .line 41
    invoke-super {p0}, Landroid/graphics/drawable/DrawableWrapper;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->mScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 3

    .prologue
    .line 36
    invoke-super {p0}, Landroid/graphics/drawable/DrawableWrapper;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->mScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
