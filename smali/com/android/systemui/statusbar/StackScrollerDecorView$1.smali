.class Lcom/android/systemui/statusbar/StackScrollerDecorView$1;
.super Ljava/lang/Object;
.source "StackScrollerDecorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/StackScrollerDecorView;->animateText(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StackScrollerDecorView;

.field final synthetic val$onFinishedRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StackScrollerDecorView;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/StackScrollerDecorView;
    .param p2, "val$onFinishedRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView$1;->this$0:Lcom/android/systemui/statusbar/StackScrollerDecorView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView$1;->val$onFinishedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView$1;->this$0:Lcom/android/systemui/statusbar/StackScrollerDecorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->-set0(Lcom/android/systemui/statusbar/StackScrollerDecorView;Z)Z

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView$1;->val$onFinishedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView$1;->val$onFinishedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 94
    :cond_f
    return-void
.end method
