.class Landroid/support/v7/widget/ForwardingListener$2;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ForwardingListener;->addDetachListenerBase(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mIsAttached:Z

.field final synthetic this$0:Landroid/support/v7/widget/ForwardingListener;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ForwardingListener;)V
    .registers 3
    .param p1, "this$0"    # Landroid/support/v7/widget/ForwardingListener;

    .prologue
    .line 102
    iput-object p1, p0, Landroid/support/v7/widget/ForwardingListener$2;->this$0:Landroid/support/v7/widget/ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener$2;->this$0:Landroid/support/v7/widget/ForwardingListener;

    iget-object v0, v0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/ForwardingListener$2;->mIsAttached:Z

    .line 102
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .prologue
    .line 107
    iget-boolean v0, p0, Landroid/support/v7/widget/ForwardingListener$2;->mIsAttached:Z

    .line 108
    .local v0, "wasAttached":Z
    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener$2;->this$0:Landroid/support/v7/widget/ForwardingListener;

    iget-object v1, v1, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/ForwardingListener$2;->mIsAttached:Z

    .line 109
    if-eqz v0, :cond_12

    iget-boolean v1, p0, Landroid/support/v7/widget/ForwardingListener$2;->mIsAttached:Z

    if-eqz v1, :cond_13

    .line 106
    :cond_12
    :goto_12
    return-void

    .line 110
    :cond_13
    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener$2;->this$0:Landroid/support/v7/widget/ForwardingListener;

    invoke-static {v1}, Landroid/support/v7/widget/ForwardingListener;->-wrap0(Landroid/support/v7/widget/ForwardingListener;)V

    goto :goto_12
.end method
