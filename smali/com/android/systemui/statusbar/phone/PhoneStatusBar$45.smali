.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onWorkChallengeUnlocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 4726
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 4729
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get20(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_31

    .line 4730
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get20(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v1

    .line 4731
    .local v1, "pendingWorkRemoteInputView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4732
    .local v0, "p":Landroid/view/ViewParent;
    :goto_12
    if-eqz v0, :cond_31

    .line 4733
    instance-of v5, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_32

    move-object v2, v0

    .line 4734
    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 4735
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 4736
    .local v4, "viewParent":Landroid/view/ViewParent;
    instance-of v5, v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v5, :cond_31

    move-object v3, v4

    .line 4738
    check-cast v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 4739
    .local v3, "scrollLayout":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->makeActionsVisibile()V

    .line 4740
    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1;

    invoke-direct {v5, p0, v3, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->post(Ljava/lang/Runnable;)Z

    .line 4728
    .end local v0    # "p":Landroid/view/ViewParent;
    .end local v1    # "pendingWorkRemoteInputView":Landroid/view/View;
    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v3    # "scrollLayout":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .end local v4    # "viewParent":Landroid/view/ViewParent;
    :cond_31
    return-void

    .line 4765
    .restart local v0    # "p":Landroid/view/ViewParent;
    .restart local v1    # "pendingWorkRemoteInputView":Landroid/view/View;
    :cond_32
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_12
.end method
