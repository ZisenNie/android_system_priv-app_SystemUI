.class Lcom/android/systemui/recents/Recents$6;
.super Ljava/lang/Object;
.source "Recents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/Recents;->onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/Recents;

.field final synthetic val$event:Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/recents/Recents;
    .param p2, "val$event"    # Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    .prologue
    .line 650
    iput-object p1, p0, Lcom/android/systemui/recents/Recents$6;->this$0:Lcom/android/systemui/recents/Recents;

    iput-object p2, p0, Lcom/android/systemui/recents/Recents$6;->val$event:Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 654
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/Recents$6;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-static {v1}, Lcom/android/systemui/recents/Recents;->-get2(Lcom/android/systemui/recents/Recents;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/Recents$6;->val$event:Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    iget v2, v2, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;->dragMode:I

    .line 655
    iget-object v3, p0, Lcom/android/systemui/recents/Recents$6;->val$event:Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    iget-object v3, v3, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;->initialRect:Landroid/graphics/Rect;

    .line 654
    invoke-interface {v1, v2, v3}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;->sendDockingTopTaskEvent(ILandroid/graphics/Rect;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 652
    :goto_11
    return-void

    .line 656
    :catch_12
    move-exception v0

    .line 657
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Recents"

    const-string/jumbo v2, "Callback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method
