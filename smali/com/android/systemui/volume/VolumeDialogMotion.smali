.class public Lcom/android/systemui/volume/VolumeDialogMotion;
.super Ljava/lang/Object;
.source "VolumeDialogMotion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeDialogMotion$Callback;,
        Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;,
        Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimating:Z

.field private final mCallback:Lcom/android/systemui/volume/VolumeDialogMotion$Callback;

.field private final mChevron:Landroid/view/View;

.field private mChevronPositionAnimator:Landroid/animation/ValueAnimator;

.field private final mContents:Landroid/view/ViewGroup;

.field private mContentsPositionAnimator:Landroid/animation/ValueAnimator;

.field private final mDialog:Landroid/app/Dialog;

.field private final mDialogView:Landroid/view/View;

.field private mDismissing:Z

.field private final mHandler:Landroid/os/Handler;

.field private mShowing:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/animation/ValueAnimator;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevronPositionAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContents:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/app/Dialog;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/VolumeDialogMotion;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->chevronPosY()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/volume/VolumeDialogMotion;Z)V
    .registers 2
    .param p1, "dismissing"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogMotion;->setDismissing(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/volume/VolumeDialogMotion;Z)V
    .registers 2
    .param p1, "showing"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogMotion;->setShowing(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/volume/VolumeDialogMotion;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->startShowAnimation()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/volume/VolumeDialogMotion$Callback;)V
    .registers 8
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "dialogView"    # Landroid/view/View;
    .param p3, "contents"    # Landroid/view/ViewGroup;
    .param p4, "chevron"    # Landroid/view/View;
    .param p5, "callback"    # Lcom/android/systemui/volume/VolumeDialogMotion$Callback;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialog:Landroid/app/Dialog;

    .line 56
    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    .line 57
    iput-object p3, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContents:Landroid/view/ViewGroup;

    .line 58
    iput-object p4, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;

    .line 59
    iput-object p5, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mCallback:Lcom/android/systemui/volume/VolumeDialogMotion$Callback;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogMotion$1;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogMotion$2;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 54
    return-void
.end method

.method private chevronDistance()I
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    return v0
.end method

.method private chevronPosY()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 124
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;

    if-nez v1, :cond_9

    .line 125
    .local v0, "tag":Ljava/lang/Object;
    :goto_5
    if-nez v0, :cond_10

    const/4 v1, 0x0

    .end local v0    # "tag":Ljava/lang/Object;
    :goto_8
    return v1

    .line 124
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    .line 125
    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_8
.end method

.method private static scaledDuration(I)I
    .registers 3
    .param p0, "base"    # I

    .prologue
    .line 248
    int-to-float v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private setDismissing(Z)V
    .registers 5
    .param p1, "dismissing"    # Z

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDismissing:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 90
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDismissing:Z

    .line 91
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_26

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDismissing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDismissing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_26
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->updateAnimating()V

    .line 88
    return-void
.end method

.method private setShowing(Z)V
    .registers 5
    .param p1, "showing"    # Z

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mShowing:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 83
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mShowing:Z

    .line 84
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_26

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_26
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->updateAnimating()V

    .line 81
    return-void
.end method

.method private startShowAnimation()V
    .registers 10

    .prologue
    const v8, 0x3ecccccd    # 0.4f

    const v7, 0x3e4ccccd    # 0.2f

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 129
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startShowAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 132
    const/16 v1, 0x12c

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->scaledDuration(I)I

    move-result v1

    int-to-long v2, v1

    .line 130
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 133
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;

    invoke-direct {v1, v6}, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;)V

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 135
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogMotion$3;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 146
    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->chevronDistance()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v4, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 147
    const/16 v1, 0x190

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->scaledDuration(I)I

    move-result v1

    int-to-long v2, v1

    .line 146
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContentsPositionAnimator:Landroid/animation/ValueAnimator;

    .line 148
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContentsPositionAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogMotion$4;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContentsPositionAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogMotion$5;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContentsPositionAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;

    invoke-direct {v1, v6}, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContentsPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContents:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContents:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 176
    const/16 v1, 0x96

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->scaledDuration(I)I

    move-result v1

    int-to-long v2, v1

    .line 174
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 177
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v4, v4, v7, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 174
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 180
    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->chevronDistance()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v4, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 181
    const/16 v1, 0xfa

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->scaledDuration(I)I

    move-result v1

    int-to-long v2, v1

    .line 180
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevronPositionAnimator:Landroid/animation/ValueAnimator;

    .line 182
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevronPositionAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v8, v4, v7, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevronPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 188
    const/16 v1, 0x32

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->scaledDuration(I)I

    move-result v1

    int-to-long v2, v1

    .line 186
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 189
    const/16 v1, 0x96

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->scaledDuration(I)I

    move-result v1

    int-to-long v2, v1

    .line 186
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 190
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v8, v4, v5, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 186
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 128
    return-void
.end method

.method private updateAnimating()V
    .registers 5

    .prologue
    .line 96
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mShowing:Z

    if-nez v1, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDismissing:Z

    .line 97
    :goto_6
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mAnimating:Z

    if-ne v0, v1, :cond_d

    return-void

    .line 96
    :cond_b
    const/4 v0, 0x1

    .local v0, "animating":Z
    goto :goto_6

    .line 98
    .end local v0    # "animating":Z
    :cond_d
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mAnimating:Z

    .line 99
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_2e

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAnimating = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mAnimating:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_2e
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mCallback:Lcom/android/systemui/volume/VolumeDialogMotion$Callback;

    if-eqz v1, :cond_39

    .line 101
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mCallback:Lcom/android/systemui/volume/VolumeDialogMotion$Callback;

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mAnimating:Z

    invoke-interface {v1, v2}, Lcom/android/systemui/volume/VolumeDialogMotion$Callback;->onAnimatingChanged(Z)V

    .line 95
    :cond_39
    return-void
.end method


# virtual methods
.method public isAnimating()Z
    .registers 2

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mAnimating:Z

    return v0
.end method

.method public startDismiss(Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "onComplete"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x0

    .line 195
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_d
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDismissing:Z

    if-eqz v0, :cond_12

    return-void

    .line 197
    :cond_12
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->setDismissing(Z)V

    .line 198
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mShowing:Z

    if-eqz v0, :cond_4b

    .line 199
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContentsPositionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2c

    .line 201
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContentsPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 203
    :cond_2c
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mContents:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevronPositionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3e

    .line 205
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevronPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 207
    :cond_3e
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->setShowing(Z)V

    .line 210
    :cond_4b
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    .line 210
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 212
    const/16 v1, 0xfa

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->scaledDuration(I)I

    move-result v1

    int-to-long v2, v1

    .line 210
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 213
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;

    invoke-direct {v1, v4}, Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;)V

    .line 210
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 214
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogMotion$6;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V

    .line 210
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 222
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$7;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/VolumeDialogMotion$7;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion;Ljava/lang/Runnable;)V

    .line 210
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 194
    return-void
.end method

.method public startShow()V
    .registers 3

    .prologue
    .line 106
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_c
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mShowing:Z

    if-eqz v0, :cond_11

    return-void

    .line 108
    :cond_11
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->setShowing(Z)V

    .line 109
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDismissing:Z

    if-eqz v0, :cond_2a

    .line 110
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->setDismissing(Z)V

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion;->startShowAnimation()V

    .line 113
    return-void

    .line 115
    :cond_2a
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_36

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mDialog.show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_36
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 105
    return-void
.end method
