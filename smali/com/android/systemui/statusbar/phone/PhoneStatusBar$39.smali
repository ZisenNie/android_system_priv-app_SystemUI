.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$deferred:Z

.field final synthetic val$dismissShade:Z

.field final synthetic val$keyguardShowing:Z

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ZZZZLjava/lang/Runnable;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p2, "val$dismissShade"    # Z
    .param p3, "val$deferred"    # Z
    .param p4, "val$keyguardShowing"    # Z
    .param p5, "val$afterKeyguardGone"    # Z
    .param p6, "val$runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 3555
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->val$dismissShade:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->val$deferred:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->val$keyguardShowing:Z

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->val$afterKeyguardGone:Z

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 3558
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39$1;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->val$keyguardShowing:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->val$afterKeyguardGone:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;ZZLjava/lang/Runnable;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 3573
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->val$dismissShade:Z

    if-eqz v0, :cond_19

    .line 3574
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZZ)V

    .line 3577
    :cond_19
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->val$deferred:Z

    return v0
.end method
