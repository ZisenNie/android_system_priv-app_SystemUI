.class Lcom/android/systemui/statusbar/BaseStatusBar$7$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$7;->onListenerConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;

.field final synthetic val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

.field final synthetic val$notifications:[Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$7;[Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/BaseStatusBar$7;
    .param p2, "val$notifications"    # [Landroid/service/notification/StatusBarNotification;
    .param p3, "val$currentRanking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$1;->val$notifications:[Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$1;->val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 612
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$1;->val$notifications:[Landroid/service/notification/StatusBarNotification;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_4
    if-ge v1, v3, :cond_15

    aget-object v0, v2, v1

    .line 613
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;

    iget-object v4, v4, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$1;->val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 612
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 611
    .end local v0    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_15
    return-void
.end method
