.class Lcom/android/systemui/statusbar/BaseStatusBar$7$3;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$7;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$7;Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/BaseStatusBar$7;
    .param p2, "val$key"    # Ljava/lang/String;
    .param p3, "val$rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$3;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$3;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$3;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$3;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$3;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$3;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 667
    return-void
.end method
