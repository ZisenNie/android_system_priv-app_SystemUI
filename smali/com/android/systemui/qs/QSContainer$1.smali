.class Lcom/android/systemui/qs/QSContainer$1;
.super Ljava/lang/Object;
.source "QSContainer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSContainer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSContainer;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/systemui/qs/QSContainer$1;->this$0:Lcom/android/systemui/qs/QSContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 5

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer$1;->this$0:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer$1;->this$0:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 300
    const/4 v1, 0x0

    .line 299
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer$1;->this$0:Lcom/android/systemui/qs/QSContainer;

    invoke-static {v1}, Lcom/android/systemui/qs/QSContainer;->-get1(Lcom/android/systemui/qs/QSContainer;)J

    move-result-wide v2

    .line 299
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 302
    const-wide/16 v2, 0x1c0

    .line 299
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 303
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 299
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer$1;->this$0:Lcom/android/systemui/qs/QSContainer;

    invoke-static {v1}, Lcom/android/systemui/qs/QSContainer;->-get0(Lcom/android/systemui/qs/QSContainer;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    .line 299
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 306
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer$1;->this$0:Lcom/android/systemui/qs/QSContainer;

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer$1;->this$0:Lcom/android/systemui/qs/QSContainer;

    iget-object v1, v1, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSContainer;->setY(F)V

    .line 307
    const/4 v0, 0x1

    return v0
.end method