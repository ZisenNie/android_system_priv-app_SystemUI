.class Lcom/android/systemui/screenshot/GlobalScreenshot$2;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshotPartial(Ljava/lang/Runnable;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field final synthetic val$finisher:Ljava/lang/Runnable;

.field final synthetic val$navBarVisible:Z

.field final synthetic val$statusBarVisible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;ZZ)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;
    .param p2, "val$finisher"    # Ljava/lang/Runnable;
    .param p3, "val$statusBarVisible"    # Z
    .param p4, "val$navBarVisible"    # Z

    .prologue
    .line 616
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->val$finisher:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->val$statusBarVisible:Z

    iput-boolean p4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->val$navBarVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    move-object v6, p1

    .line 619
    check-cast v6, Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    .line 620
    .local v6, "view":Lcom/android/systemui/screenshot/ScreenshotSelectorView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_68

    .line 647
    return v1

    .line 622
    :pswitch_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v6, v0, v1}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->startSelection(II)V

    .line 623
    return v8

    .line 625
    :pswitch_1b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v6, v0, v1}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->updateSelection(II)V

    .line 626
    return v8

    .line 628
    :pswitch_29
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get8(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get5(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 630
    invoke-virtual {v6}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 631
    .local v5, "rect":Landroid/graphics/Rect;
    if-eqz v5, :cond_64

    .line 632
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_64

    .line 634
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get5(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v7

    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->val$finisher:Ljava/lang/Runnable;

    iget-boolean v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->val$statusBarVisible:Z

    iget-boolean v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->val$navBarVisible:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot$2;Ljava/lang/Runnable;ZZLandroid/graphics/Rect;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 643
    :cond_64
    invoke-virtual {v6}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->stopSelection()V

    .line 644
    return v8

    .line 620
    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_d
        :pswitch_29
        :pswitch_1b
    .end packed-switch
.end method
