.class Lcom/android/systemui/statusbar/BaseStatusBar$11;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

.field final synthetic val$appUidF:I

.field final synthetic val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;Ljava/lang/String;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p2, "val$guts"    # Lcom/android/systemui/statusbar/NotificationGuts;
    .param p3, "val$pkg"    # Ljava/lang/String;
    .param p4, "val$appUidF"    # I

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->val$pkg:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->val$appUidF:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/16 v1, 0xcd

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1105
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    .line 1106
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->val$pkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->val$appUidF:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->-wrap4(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;I)V

    .line 1103
    return-void
.end method
