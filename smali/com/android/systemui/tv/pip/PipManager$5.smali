.class Lcom/android/systemui/tv/pip/PipManager$5;
.super Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
.source "PipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/pip/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tv/pip/PipManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/tv/pip/PipManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/tv/pip/PipManager;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPinned()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 621
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v2}, Lcom/android/systemui/tv/pip/PipManager;->-wrap0(Lcom/android/systemui/tv/pip/PipManager;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    .line 622
    .local v1, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    if-nez v1, :cond_14

    .line 623
    const-string/jumbo v2, "PipManager"

    const-string/jumbo v3, "Cannot find pinned stack"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return-void

    .line 627
    :cond_14
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    iget-object v3, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget-object v4, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    invoke-static {v2, v3}, Lcom/android/systemui/tv/pip/PipManager;->-set3(Lcom/android/systemui/tv/pip/PipManager;I)I

    .line 628
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    .line 629
    iget-object v3, v1, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    iget-object v4, v1, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    .line 628
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/tv/pip/PipManager;->-set2(Lcom/android/systemui/tv/pip/PipManager;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 631
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v2, v6}, Lcom/android/systemui/tv/pip/PipManager;->-set4(Lcom/android/systemui/tv/pip/PipManager;I)I

    .line 632
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v3}, Lcom/android/systemui/tv/pip/PipManager;->-get4(Lcom/android/systemui/tv/pip/PipManager;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/tv/pip/PipManager;->-set0(Lcom/android/systemui/tv/pip/PipManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 633
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v2}, Lcom/android/systemui/tv/pip/PipManager;->-wrap4(Lcom/android/systemui/tv/pip/PipManager;)V

    .line 634
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v2}, Lcom/android/systemui/tv/pip/PipManager;->-get3(Lcom/android/systemui/tv/pip/PipManager;)Landroid/media/session/MediaSessionManager;

    move-result-object v2

    .line 635
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v3}, Lcom/android/systemui/tv/pip/PipManager;->-get0(Lcom/android/systemui/tv/pip/PipManager;)Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    move-result-object v3

    .line 634
    invoke-virtual {v2, v3, v5}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V

    .line 636
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v3}, Lcom/android/systemui/tv/pip/PipManager;->-get3(Lcom/android/systemui/tv/pip/PipManager;)Landroid/media/session/MediaSessionManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/tv/pip/PipManager;->-wrap7(Lcom/android/systemui/tv/pip/PipManager;Ljava/util/List;)V

    .line 637
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v2}, Lcom/android/systemui/tv/pip/PipManager;->-get5(Lcom/android/systemui/tv/pip/PipManager;)Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->isRecentsShown()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 640
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    .line 642
    :cond_79
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v2}, Lcom/android/systemui/tv/pip/PipManager;->-get2(Lcom/android/systemui/tv/pip/PipManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_85
    if-ltz v0, :cond_99

    .line 643
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v2}, Lcom/android/systemui/tv/pip/PipManager;->-get2(Lcom/android/systemui/tv/pip/PipManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tv/pip/PipManager$Listener;

    invoke-interface {v2}, Lcom/android/systemui/tv/pip/PipManager$Listener;->onPipEntered()V

    .line 642
    add-int/lit8 v0, v0, -0x1

    goto :goto_85

    .line 645
    :cond_99
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v2, v6}, Lcom/android/systemui/tv/pip/PipManager;->-wrap8(Lcom/android/systemui/tv/pip/PipManager;Z)V

    .line 619
    return-void
.end method

.method public onPinnedActivityRestartAttempt()V
    .registers 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipManager;->movePipToFullscreen()V

    .line 649
    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .registers 3

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipManager;->-get8(Lcom/android/systemui/tv/pip/PipManager;)I

    move-result v0

    packed-switch v0, :pswitch_data_38

    .line 656
    :goto_9
    return-void

    .line 660
    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipManager;->-get5(Lcom/android/systemui/tv/pip/PipManager;)Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->isRecentsShown()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 661
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipManager;->-wrap6(Lcom/android/systemui/tv/pip/PipManager;)V

    goto :goto_9

    .line 666
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v1}, Lcom/android/systemui/tv/pip/PipManager;->-get8(Lcom/android/systemui/tv/pip/PipManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    goto :goto_9

    .line 671
    :pswitch_28
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipManager;->-get5(Lcom/android/systemui/tv/pip/PipManager;)Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->addPipRecentsOverlayView()V

    goto :goto_9

    .line 674
    :pswitch_32
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipManager;->-wrap5(Lcom/android/systemui/tv/pip/PipManager;)V

    goto :goto_9

    .line 658
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_a
        :pswitch_32
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method public onTaskStackChanged()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 587
    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v4}, Lcom/android/systemui/tv/pip/PipManager;->-get8(Lcom/android/systemui/tv/pip/PipManager;)I

    move-result v4

    if-eqz v4, :cond_45

    .line 588
    const/4 v1, 0x0

    .line 590
    .local v1, "hasPip":Z
    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v4}, Lcom/android/systemui/tv/pip/PipManager;->-wrap0(Lcom/android/systemui/tv/pip/PipManager;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v3

    .line 591
    .local v3, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v3, :cond_17

    iget-object v4, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    if-nez v4, :cond_26

    .line 592
    :cond_17
    const-string/jumbo v4, "PipManager"

    const-string/jumbo v5, "There is nothing in pinned stack"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v4, v6}, Lcom/android/systemui/tv/pip/PipManager;->-wrap2(Lcom/android/systemui/tv/pip/PipManager;Z)V

    .line 594
    return-void

    .line 596
    :cond_26
    iget-object v4, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_2b
    if-ltz v2, :cond_3a

    .line 597
    iget-object v4, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v5}, Lcom/android/systemui/tv/pip/PipManager;->-get6(Lcom/android/systemui/tv/pip/PipManager;)I

    move-result v5

    if-ne v4, v5, :cond_42

    .line 599
    const/4 v1, 0x1

    .line 603
    :cond_3a
    if-nez v1, :cond_45

    .line 605
    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v4, v7}, Lcom/android/systemui/tv/pip/PipManager;->-wrap2(Lcom/android/systemui/tv/pip/PipManager;Z)V

    .line 606
    return-void

    .line 596
    :cond_42
    add-int/lit8 v2, v2, -0x1

    goto :goto_2b

    .line 609
    .end local v1    # "hasPip":Z
    .end local v2    # "i":I
    .end local v3    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_45
    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v4}, Lcom/android/systemui/tv/pip/PipManager;->-get8(Lcom/android/systemui/tv/pip/PipManager;)I

    move-result v4

    if-ne v4, v7, :cond_6d

    .line 610
    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v4}, Lcom/android/systemui/tv/pip/PipManager;->-wrap1(Lcom/android/systemui/tv/pip/PipManager;)Z

    move-result v4

    if-eqz v4, :cond_6e

    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v4}, Lcom/android/systemui/tv/pip/PipManager;->-get7(Lcom/android/systemui/tv/pip/PipManager;)Landroid/graphics/Rect;

    move-result-object v0

    .line 611
    .local v0, "bounds":Landroid/graphics/Rect;
    :goto_5b
    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v4}, Lcom/android/systemui/tv/pip/PipManager;->-get4(Lcom/android/systemui/tv/pip/PipManager;)Landroid/graphics/Rect;

    move-result-object v4

    if-eq v4, v0, :cond_6d

    .line 612
    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v4, v0}, Lcom/android/systemui/tv/pip/PipManager;->-set1(Lcom/android/systemui/tv/pip/PipManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 613
    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v4, v7}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    .line 586
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_6d
    return-void

    .line 610
    :cond_6e
    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v4}, Lcom/android/systemui/tv/pip/PipManager;->-get1(Lcom/android/systemui/tv/pip/PipManager;)Landroid/graphics/Rect;

    move-result-object v0

    .restart local v0    # "bounds":Landroid/graphics/Rect;
    goto :goto_5b
.end method
