.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 2107
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainer;->getHeader()Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->updateEverything()V

    .line 2109
    return-void
.end method
