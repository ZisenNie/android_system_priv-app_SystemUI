.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$keyguardShowing:Z

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;ZZLjava/lang/Runnable;)V
    .registers 5
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;
    .param p2, "val$keyguardShowing"    # Z
    .param p3, "val$afterKeyguardGone"    # Z
    .param p4, "val$runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 3558
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39$1;->val$keyguardShowing:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39$1;->val$afterKeyguardGone:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3562
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39$1;->val$keyguardShowing:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39$1;->val$afterKeyguardGone:Z

    if-eqz v1, :cond_12

    .line 3566
    :cond_8
    :goto_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39$1;->val$runnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_11

    .line 3567
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3560
    :cond_11
    :goto_11
    return-void

    .line 3563
    :cond_12
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_8

    .line 3569
    :catch_1a
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_11
.end method
