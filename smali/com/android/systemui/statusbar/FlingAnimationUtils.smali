.class public Lcom/android/systemui/statusbar/FlingAnimationUtils;
.super Ljava/lang/Object;
.source "FlingAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;,
        Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;,
        Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;
    }
.end annotation


# instance fields
.field private mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

.field private mHighVelocityPxPerSecond:F

.field private mLinearOutSlowIn:Landroid/view/animation/Interpolator;

.field private mMaxLengthSeconds:F

.field private mMinVelocityPxPerSecond:F


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .registers 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "maxLengthSeconds"    # F

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;-><init>(Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    .line 53
    iput p2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMaxLengthSeconds:F

    .line 54
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3eb33333    # 0.35f

    invoke-direct {v0, v3, v3, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x437a0000    # 250.0f

    mul-float/2addr v0, v1

    .line 55
    iput v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const v1, 0x453b8000    # 3000.0f

    mul-float/2addr v0, v1

    .line 57
    iput v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mHighVelocityPxPerSecond:F

    .line 52
    return-void
.end method

.method private calculateLinearOutFasterInY2(F)F
    .registers 7
    .param p1, "velocity"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 235
    iget v1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    sub-float v1, p1, v1

    .line 236
    iget v2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mHighVelocityPxPerSecond:F

    iget v3, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    sub-float/2addr v2, v3

    .line 235
    div-float v0, v1, v2

    .line 237
    .local v0, "t":F
    const/4 v1, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 238
    sub-float v1, v4, v0

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method

.method private getDismissingProperties(FFFF)Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;
    .registers 23
    .param p1, "currValue"    # F
    .param p2, "endValue"    # F
    .param p3, "velocity"    # F
    .param p4, "maxDistance"    # F

    .prologue
    .line 196
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMaxLengthSeconds:F

    float-to-double v12, v11

    .line 197
    sub-float v11, p2, p1

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    div-float v11, v11, p4

    float-to-double v14, v11

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    .line 196
    mul-double/2addr v12, v14

    double-to-float v5, v12

    .line 198
    .local v5, "maxLengthSeconds":F
    sub-float v11, p2, p1

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 199
    .local v2, "diff":F
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 200
    .local v8, "velAbs":F
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->calculateLinearOutFasterInY2(F)F

    move-result v10

    .line 202
    .local v10, "y2":F
    const/high16 v11, 0x3f000000    # 0.5f

    div-float v6, v10, v11

    .line 203
    .local v6, "startGradient":F
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f000000    # 0.5f

    invoke-direct {v4, v11, v12, v13, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 204
    .local v4, "mLinearOutFasterIn":Landroid/view/animation/Interpolator;
    mul-float v11, v6, v2

    div-float v3, v11, v8

    .line 205
    .local v3, "durationSeconds":F
    cmpg-float v11, v3, v5

    if-gtz v11, :cond_50

    .line 206
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    iput-object v4, v11, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    .line 223
    :goto_41
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    const/high16 v12, 0x447a0000    # 1000.0f

    mul-float/2addr v12, v3

    float-to-long v12, v12

    iput-wide v12, v11, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->duration:J

    .line 224
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    return-object v11

    .line 207
    :cond_50
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    cmpl-float v11, v8, v11

    if-ltz v11, :cond_6f

    .line 211
    move v3, v5

    .line 213
    new-instance v9, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;

    const/4 v11, 0x0

    invoke-direct {v9, v5, v8, v2, v11}, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;-><init>(FFFLcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;)V

    .line 214
    .local v9, "velocityInterpolator":Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;
    new-instance v7, Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;

    .line 215
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 214
    invoke-direct {v7, v9, v4, v11}, Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    .line 216
    .local v7, "superInterpolator":Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    iput-object v7, v11, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    goto :goto_41

    .line 220
    .end local v7    # "superInterpolator":Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;
    .end local v9    # "velocityInterpolator":Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;
    :cond_6f
    move v3, v5

    .line 221
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    sget-object v12, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    iput-object v12, v11, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    goto :goto_41
.end method

.method private getProperties(FFFF)Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;
    .registers 15
    .param p1, "currValue"    # F
    .param p2, "endValue"    # F
    .param p3, "velocity"    # F
    .param p4, "maxDistance"    # F

    .prologue
    .line 128
    iget v6, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMaxLengthSeconds:F

    float-to-double v6, v6

    .line 129
    sub-float v8, p2, p1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    div-float/2addr v8, p4

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 128
    mul-double/2addr v6, v8

    double-to-float v2, v6

    .line 130
    .local v2, "maxLengthSeconds":F
    sub-float v6, p2, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 131
    .local v0, "diff":F
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 132
    .local v4, "velAbs":F
    const v6, 0x4036db6e

    mul-float/2addr v6, v0

    div-float v1, v6, v4

    .line 133
    .local v1, "durationSeconds":F
    cmpg-float v6, v1, v2

    if-gtz v6, :cond_36

    .line 134
    iget-object v6, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    iget-object v7, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    iput-object v7, v6, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    .line 150
    :goto_2b
    iget-object v6, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v1

    float-to-long v8, v7

    iput-wide v8, v6, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->duration:J

    .line 151
    iget-object v6, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    return-object v6

    .line 135
    :cond_36
    iget v6, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    cmpl-float v6, v4, v6

    if-ltz v6, :cond_51

    .line 138
    move v1, v2

    .line 140
    new-instance v5, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v4, v0, v6}, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;-><init>(FFFLcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;)V

    .line 141
    .local v5, "velocityInterpolator":Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;
    new-instance v3, Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;

    .line 142
    iget-object v6, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    iget-object v7, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 141
    invoke-direct {v3, v5, v6, v7}, Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    .line 143
    .local v3, "superInterpolator":Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;
    iget-object v6, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    iput-object v3, v6, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    goto :goto_2b

    .line 147
    .end local v3    # "superInterpolator":Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;
    .end local v5    # "velocityInterpolator":Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;
    :cond_51
    move v1, v2

    .line 148
    iget-object v6, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    sget-object v7, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v7, v6, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    goto :goto_2b
.end method


# virtual methods
.method public apply(Landroid/animation/Animator;FFF)V
    .registers 11
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "currValue"    # F
    .param p3, "endValue"    # F
    .param p4, "velocity"    # F

    .prologue
    .line 71
    sub-float v0, p3, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    .line 70
    return-void
.end method

.method public apply(Landroid/animation/Animator;FFFF)V
    .registers 10
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "currValue"    # F
    .param p3, "endValue"    # F
    .param p4, "velocity"    # F
    .param p5, "maxDistance"    # F

    .prologue
    .line 101
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getProperties(FFFF)Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    move-result-object v0

    .line 103
    .local v0, "properties":Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;
    iget-wide v2, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->duration:J

    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 104
    iget-object v1, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 100
    return-void
.end method

.method public apply(Landroid/view/ViewPropertyAnimator;FFF)V
    .registers 11
    .param p1, "animator"    # Landroid/view/ViewPropertyAnimator;
    .param p2, "currValue"    # F
    .param p3, "endValue"    # F
    .param p4, "velocity"    # F

    .prologue
    .line 85
    sub-float v0, p3, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/view/ViewPropertyAnimator;FFFF)V

    .line 84
    return-void
.end method

.method public apply(Landroid/view/ViewPropertyAnimator;FFFF)V
    .registers 10
    .param p1, "animator"    # Landroid/view/ViewPropertyAnimator;
    .param p2, "currValue"    # F
    .param p3, "endValue"    # F
    .param p4, "velocity"    # F
    .param p5, "maxDistance"    # F

    .prologue
    .line 120
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getProperties(FFFF)Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    move-result-object v0

    .line 122
    .local v0, "properties":Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;
    iget-wide v2, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->duration:J

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 123
    iget-object v1, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 119
    return-void
.end method

.method public applyDismissing(Landroid/animation/Animator;FFFF)V
    .registers 10
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "currValue"    # F
    .param p3, "endValue"    # F
    .param p4, "velocity"    # F
    .param p5, "maxDistance"    # F

    .prologue
    .line 168
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getDismissingProperties(FFFF)Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    move-result-object v0

    .line 170
    .local v0, "properties":Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;
    iget-wide v2, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->duration:J

    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 171
    iget-object v1, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 167
    return-void
.end method

.method public getMinVelocityPxPerSecond()F
    .registers 2

    .prologue
    .line 245
    iget v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    return v0
.end method
