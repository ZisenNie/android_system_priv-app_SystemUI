.class Lcom/android/systemui/statusbar/ActivatableNotificationView$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActivatableNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ActivatableNotificationView;->fadeInFromDark(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

.field final synthetic val$background:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .param p2, "val$background"    # Landroid/view/View;

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$9;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$9;->val$background:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 565
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$9;->val$background:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 566
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$9;->val$background:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 567
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$9;->val$background:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 563
    return-void
.end method
