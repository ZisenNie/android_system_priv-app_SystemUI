.class Lcom/android/systemui/statusbar/policy/KeyButtonView$1;
.super Ljava/lang/Object;
.source "KeyButtonView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/KeyButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->performLongClick()Z

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->-set0(Lcom/android/systemui/statusbar/policy/KeyButtonView;Z)Z

    .line 65
    :cond_1b
    :goto_1b
    return-void

    .line 72
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->-get1(Lcom/android/systemui/statusbar/policy/KeyButtonView;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/4 v1, 0x0

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->-set0(Lcom/android/systemui/statusbar/policy/KeyButtonView;Z)Z

    goto :goto_1b
.end method
