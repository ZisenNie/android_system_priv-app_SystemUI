.class final Lcom/android/systemui/statusbar/ServiceMonitor$SC;
.super Ljava/lang/Object;
.source "ServiceMonitor.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ServiceMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SC"
.end annotation


# instance fields
.field private mName:Landroid/content/ComponentName;

.field private mService:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/systemui/statusbar/ServiceMonitor;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/ServiceMonitor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ServiceMonitor;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/ServiceMonitor;Lcom/android/systemui/statusbar/ServiceMonitor$SC;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ServiceMonitor;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ServiceMonitor$SC;-><init>(Lcom/android/systemui/statusbar/ServiceMonitor;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->-get1(Lcom/android/systemui/statusbar/ServiceMonitor;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->-get4(Lcom/android/systemui/statusbar/ServiceMonitor;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->-get2(Lcom/android/systemui/statusbar/ServiceMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->-get2(Lcom/android/systemui/statusbar/ServiceMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->mName:Landroid/content/ComponentName;

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 135
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->-get1(Lcom/android/systemui/statusbar/ServiceMonitor;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->-get4(Lcom/android/systemui/statusbar/ServiceMonitor;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceConnected name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_30
    iput-object p1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->mName:Landroid/content/ComponentName;

    .line 120
    iput-object p2, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->mService:Landroid/os/IBinder;

    .line 122
    const/4 v1, 0x0

    :try_start_35
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_38} :catch_39

    .line 117
    :goto_38
    return-void

    .line 123
    :catch_39
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->-get4(Lcom/android/systemui/statusbar/ServiceMonitor;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Error linking to death"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->-get1(Lcom/android/systemui/statusbar/ServiceMonitor;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->-get4(Lcom/android/systemui/statusbar/ServiceMonitor;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceDisconnected name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_25
    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->mService:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    .line 131
    .local v0, "unlinked":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->-get1(Lcom/android/systemui/statusbar/ServiceMonitor;)Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->-get4(Lcom/android/systemui/statusbar/ServiceMonitor;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  unlinked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_51
    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->-get2(Lcom/android/systemui/statusbar/ServiceMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ServiceMonitor;->-get2(Lcom/android/systemui/statusbar/ServiceMonitor;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->mName:Landroid/content/ComponentName;

    const/4 v4, 0x6

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 128
    return-void
.end method
