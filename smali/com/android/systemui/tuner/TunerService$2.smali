.class final Lcom/android/systemui/tuner/TunerService$2;
.super Ljava/lang/Object;
.source "TunerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/TunerService;->showResetRequest(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$onDisabled:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "val$context"    # Landroid/content/Context;
    .param p2, "val$onDisabled"    # Ljava/lang/Runnable;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerService$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/tuner/TunerService$2;->val$onDisabled:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 238
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerService$2;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.systemui.action.CLEAR_TUNER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerService$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/systemui/tuner/TunerService;->setTunerEnabled(Landroid/content/Context;Z)V

    .line 242
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerService$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 243
    const-string/jumbo v1, "seen_tuner_warning"

    .line 242
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 244
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerService$2;->val$onDisabled:Ljava/lang/Runnable;

    if-eqz v0, :cond_28

    .line 245
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerService$2;->val$onDisabled:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 236
    :cond_28
    return-void
.end method
