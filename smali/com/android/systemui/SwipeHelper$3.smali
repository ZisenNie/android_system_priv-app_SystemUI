.class Lcom/android/systemui/SwipeHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/SwipeHelper;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$canBeDismissed:Z

.field final synthetic val$endAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ZLjava/lang/Runnable;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/systemui/SwipeHelper;
    .param p2, "val$animView"    # Landroid/view/View;
    .param p3, "val$canBeDismissed"    # Z
    .param p4, "val$endAction"    # Ljava/lang/Runnable;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper$3;->this$0:Lcom/android/systemui/SwipeHelper;

    iput-object p2, p0, Lcom/android/systemui/SwipeHelper$3;->val$animView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/SwipeHelper$3;->val$canBeDismissed:Z

    iput-object p4, p0, Lcom/android/systemui/SwipeHelper$3;->val$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/SwipeHelper$3;->mCancelled:Z

    .line 404
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 409
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$3;->this$0:Lcom/android/systemui/SwipeHelper;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$3;->val$animView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/SwipeHelper$3;->val$canBeDismissed:Z

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SwipeHelper;->-wrap0(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    .line 410
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$3;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v0}, Lcom/android/systemui/SwipeHelper;->-get3(Lcom/android/systemui/SwipeHelper;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$3;->val$animView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper$3;->mCancelled:Z

    if-nez v0, :cond_24

    .line 412
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$3;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v0}, Lcom/android/systemui/SwipeHelper;->-get0(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$3;->val$animView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/SwipeHelper$Callback;->onChildDismissed(Landroid/view/View;)V

    .line 414
    :cond_24
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$3;->val$endAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_2d

    .line 415
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$3;->val$endAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 417
    :cond_2d
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$3;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v0}, Lcom/android/systemui/SwipeHelper;->-get2(Lcom/android/systemui/SwipeHelper;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 418
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$3;->val$animView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 408
    :cond_3b
    return-void
.end method