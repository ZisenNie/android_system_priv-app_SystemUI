.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;
.super Ljava/lang/Object;
.source "NetworkControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setUserSetupComplete(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

.field final synthetic val$userSetup:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p2, "val$userSetup"    # Z

    .prologue
    .line 522
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;->val$userSetup:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;->val$userSetup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->handleSetUserSetupComplete(Z)V

    .line 524
    return-void
.end method
